from pathlib import Path
import matplotlib.pyplot as plt
import numpy as np
import pandas as pd

from read_signals import read_output_signals, find_transitions


def plot_signals(axs, label:str, signals: pd.DataFrame, x_sig_names: list[str], *y_sigs_names: list[str]):
  assert len(x_sig_names) == len(y_sigs_names), "The x-signals and y-signals have to have the same length"
  
  if axs is None:
    fig, axs = plt.subplots(len(x_sig_names), 1)
  
  if len(x_sig_names) == 1 and not isinstance(axs, list):
    axs = [axs]
  
  for ax_idx, (x_sig, y_sig_names) in enumerate(zip(x_sig_names, y_sigs_names)):
    for y_sig in y_sig_names:
      axs[ax_idx].plot(signals[x_sig].values, signals[y_sig].values, label=f"{y_sig} {label}")
    axs[ax_idx].set_xlabel(x_sig)
    axs[ax_idx].legend()
    axs[ax_idx].grid()
    
  return axs
  
  

def plot_variable_delay_tb():
  wrdata_output_0 = Path("~/.xschem/simulations/variable_delay_0_tb.txt").expanduser()
  signals_0 = read_output_signals(wrdata_output_0)
  axs = plot_signals(None, "0", signals_0, ["time"], ["v(in)", "v(delay)"])
  
  wrdata_output_1 = Path("~/.xschem/simulations/variable_delay_1_tb.txt").expanduser()
  signals_1 = read_output_signals(wrdata_output_1)
  axs = plot_signals(axs, "1", signals_1, ["time"], ["v(delay)"])
  
  wrdata_output_2 = Path("~/.xschem/simulations/variable_delay_2_tb.txt").expanduser()
  signals_2 = read_output_signals(wrdata_output_2)
  axs = plot_signals(axs, "2", signals_2, ["time"], ["v(delay)"])
  
  wrdata_output_3 = Path("~/.xschem/simulations/variable_delay_3_tb.txt").expanduser()
  signals_3 = read_output_signals(wrdata_output_3)
  axs = plot_signals(axs, "3", signals_3, ["time"], ["v(delay)"])
  
  axs = plot_signals(axs, "4", read_output_signals(Path(f"~/.xschem/simulations/variable_delay_4_tb.txt").expanduser()), ["time"], ["v(delay)"])
  axs = plot_signals(axs, "5", read_output_signals(Path(f"~/.xschem/simulations/variable_delay_5_tb.txt").expanduser()), ["time"], ["v(delay)"])
  axs = plot_signals(axs, "6", read_output_signals(Path(f"~/.xschem/simulations/variable_delay_6_tb.txt").expanduser()), ["time"], ["v(delay)"])
  axs = plot_signals(axs, "7", read_output_signals(Path(f"~/.xschem/simulations/variable_delay_7_tb.txt").expanduser()), ["time"], ["v(delay)"])
  
  plt.show()

  
if __name__ == "__main__":
  plot_variable_delay_tb()
  
