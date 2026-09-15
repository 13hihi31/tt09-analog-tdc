from pathlib import Path
import re
import numpy as np
import matplotlib.pyplot as plt

SEC_TO_PICO_SEC = 1000000000000

def parse_phase_files(directory_path="."):
    """
    Loops through a directory, matches files like 'phase_-1.0.txt' or 'phase_-1_0.txt',
    and returns a dictionary mapping the Path object to its parsed float value.
    """
    dir_path = Path(directory_path)
    parsed_data = {}
    
    # Regex breakdown:
    # phase_        -> matches the literal prefix
    # (-?\d+(?:[._]\d+)?) -> Captures optional negative sign, digits, 
    #                        and optional decimal point or underscore followed by digits
    # \.txt$        -> matches the .txt extension
    pattern = re.compile(r"^phase_(-?\d+(?:[._]\d+)?)\.txt$")
    
    for file in dir_path.iterdir():
        if file.is_file():
            match = pattern.match(file.name)
            if match:
                raw_val = match.group(1)
                # Replace underscore with dot if underscore format was used
                clean_val = raw_val.replace('_', '.')
                parsed_data[file] = float(clean_val)
                
    return parsed_data

def extract_all_binary(file_path):
    """
    Reads a file and returns a list of integer values (e.g., 0b01111111) 
    for all 8-bit binary sequences found, completely ignoring non-binary text.
    """
    text = Path(file_path).read_text(encoding="utf-8")
    
    # Matches any standalone 8-digit sequence of 0s and 1s
    binary_strings = re.findall(r"\b[01]{8}\b", text)
    
    # Convert base-2 strings to Python integers
    return [int(b_str, 2) for b_str in binary_strings]

def is_thermometer_bitwise(x):
    """Returns True if x is a valid LSB-first thermometer code of any bit length."""
    return x >= 0 and ((x + 1) & x) == 0

def phase_to_time_diff(phase_diff, frequency_hz, unit='deg'):
    """
    Calculates time difference from phase difference and signal frequency.
    
    Parameters:
        phase_diff (float, list, or np.ndarray): Phase difference value(s).
        frequency_hz (float): Signal frequency in Hertz (e.g., 20e6 for 20 MHz).
        unit (str): Unit of phase_diff ('deg' for degrees, 'rad' for radians). Default is 'deg'.
        
    Returns:
        float or np.ndarray: Time difference in seconds.
    """
    phase = np.asarray(phase_diff)
    
    if unit.lower() in ('deg', 'degrees'):
        time_diff = (phase / 360.0) / frequency_hz
    elif unit.lower() in ('rad', 'radians'):
        time_diff = (phase / (2 * math.pi)) / frequency_hz
    else:
        raise ValueError("unit must be either 'deg' or 'rad'")
        
    return time_diff

def compute_tdc_resolution(time_diffs, avg_codes):
    """
    Computes TDC resolution (LSB size) and linearity metrics using linear regression.
    
    Parameters:
        time_diffs (array-like): Input time differences in seconds.
        avg_codes (array-like): Mean TDC output codes for each time step.
        
    Returns:
        dict: Resolution metrics including LSB in seconds/ps, gain, intercept, and R^2.
    """
    x = np.asarray(time_diffs, dtype=float)
    y = np.asarray(avg_codes, dtype=float)
    
    # Linear fit: y = m*x + c
    m, c = np.polyfit(x, y, 1)
    
    if m == 0:
        raise ValueError("Slope is zero; cannot compute LSB resolution.")
        
    # Calculate R-squared (linearity metric)
    y_pred = m * x + c
    ss_res = np.sum((y - y_pred) ** 2)
    ss_tot = np.sum((y - np.mean(y)) ** 2)
    r_squared = 1.0 - (ss_res / ss_tot) if ss_tot != 0 else 1.0
    
    # LSB size is 1 / |slope| (time required to change the output by 1 code)
    lsb_sec = abs(1.0 / m)
    
    return {
        "lsb_sec": lsb_sec,
        "lsb_ps": lsb_sec * 1e12,
        "lsb_ns": lsb_sec * 1e9,
        "gain": m,           # codes per second
        "intercept": c,      # offset code at dt = 0
        "r_squared": r_squared
    }

if __name__ == "__main__":
    results = parse_phase_files("test_results")
    
    # Sort the dictionary items by the phase_value (item[1])
    sorted_results = sorted(results.items(), key=lambda item: item[1])

    signal_freq_Hz = 20000000
    
    time_diffs = []
    tdc_avg_codes = []
    
    for file_path, phase_value in sorted_results:
        print(f"Processing file: {file_path.name:<20}")

        raw_base2_ints = extract_all_binary(file_path)

        # Convert thermometer codes to actual stage counts (number of 1s)
        stage_counts = [val.bit_count() for val in raw_base2_ints]
        
        tdc_outputs = np.array(stage_counts)

        tdc_avg_codes.append(tdc_outputs.mean())
        time_diffs.append(phase_to_time_diff(phase_value, signal_freq_Hz))

    start_idx = 2
    end_idx = -2

    # We bias the circuit to delay the stop signal and then add phase to the stop signal.
    # Adding the phase shifts the stop signal to the left, thus lowering the phase difference
    # between the start and stop signal ariving to the TDC. But we measure the signal phase
    # and not the difference between the biased internal delay and the signal phase.
    time_diffs = np.array(time_diffs)
    time_diffs = time_diffs[-1] - time_diffs

    res = compute_tdc_resolution(time_diffs[start_idx:end_idx], tdc_avg_codes[start_idx:end_idx])
    
    print(f"TDC Resolution (LSB): {res['lsb_ps']:.2f} ps/code ({res['lsb_ns']:.4f} ns/code)")
    print(f"Gain (Sensitivity):   {res['gain']:.3e} codes/sec")
    print(f"Linearity (R²):       {res['r_squared']:.4f}")

    plt.plot(time_diffs * SEC_TO_PICO_SEC, tdc_avg_codes, marker='o')
    plt.xlabel("Start-stop phase difference [ps]")
    plt.ylabel("Mean TDC output code")
    plt.title("Tapeout TDC transfer curve")
    plt.grid(True)

    plt.savefig("transfer_curve.png")
    print("Plot saved to transfer_curve.png")

    plt.show()
