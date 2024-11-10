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
  
  

def plot_fine_delay_tb():
  axs = plot_signals(None, "0", read_output_signals(Path(f"~/.xschem/simulations/fine_delay_tb_0").expanduser()), ["time"], ["v(in)", "v(delay)"])
  axs = plot_signals(axs, "1", read_output_signals(Path(f"~/.xschem/simulations/fine_delay_tb_1").expanduser()), ["time"], ["v(delay)"])
  axs = plot_signals(axs, "2", read_output_signals(Path(f"~/.xschem/simulations/fine_delay_tb_2").expanduser()), ["time"], ["v(delay)"])
  axs = plot_signals(axs, "3", read_output_signals(Path(f"~/.xschem/simulations/fine_delay_tb_3").expanduser()), ["time"], ["v(delay)"])
  axs = plot_signals(axs, "4", read_output_signals(Path(f"~/.xschem/simulations/fine_delay_tb_4").expanduser()), ["time"], ["v(delay)"])
  #axs = plot_signals(axs, "5", read_output_signals(Path(f"~/.xschem/simulations/fine_delay_tb_5").expanduser()), ["time"], ["v(delay)"])
  #axs = plot_signals(axs, "6", read_output_signals(Path(f"~/.xschem/simulations/fine_delay_tb_6").expanduser()), ["time"], ["v(delay)"])
  #axs = plot_signals(axs, "7", read_output_signals(Path(f"~/.xschem/simulations/fine_delay_tb_7").expanduser()), ["time"], ["v(delay)"])
  
  plt.show()
  

def find_time_diff():
  sig_0 = read_output_signals(Path(f"~/.xschem/simulations/fine_delay_tb_0").expanduser())
  sig_1 = read_output_signals(Path(f"~/.xschem/simulations/fine_delay_tb_1").expanduser())
  sig_2 = read_output_signals(Path(f"~/.xschem/simulations/fine_delay_tb_2").expanduser())
  sig_3 = read_output_signals(Path(f"~/.xschem/simulations/fine_delay_tb_3").expanduser())
  sig_4 = read_output_signals(Path(f"~/.xschem/simulations/fine_delay_tb_4").expanduser())
  sig_5 = read_output_signals(Path(f"~/.xschem/simulations/fine_delay_tb_5").expanduser())
  sig_6 = read_output_signals(Path(f"~/.xschem/simulations/fine_delay_tb_6").expanduser())
  sig_7 = read_output_signals(Path(f"~/.xschem/simulations/fine_delay_tb_7").expanduser())
  
  time = sig_0["time"].to_numpy()
  
  v_in = find_transitions(sig_0["v(in)"].to_numpy(), 0.9)[0][0]
  delay_0 = find_transitions(sig_0["v(delay)"].to_numpy(), 0.9)[0][0]
  delay_1 = find_transitions(sig_1["v(delay)"].to_numpy(), 0.9)[0][0]
  delay_2 = find_transitions(sig_2["v(delay)"].to_numpy(), 0.9)[0][0]
  delay_3 = find_transitions(sig_3["v(delay)"].to_numpy(), 0.9)[0][0]
  delay_4 = find_transitions(sig_4["v(delay)"].to_numpy(), 0.9)[0][0]
  delay_5 = find_transitions(sig_5["v(delay)"].to_numpy(), 0.9)[0][0]
  delay_6 = find_transitions(sig_6["v(delay)"].to_numpy(), 0.9)[0][0]
  delay_7 = find_transitions(sig_7["v(delay)"].to_numpy(), 0.9)[0][0]
  
  timepoints = time[np.array([v_in, delay_0, delay_1, delay_2, delay_3, delay_4, delay_5, delay_6, delay_7])]
  print(timepoints - timepoints[0], np.diff(timepoints))
  
  axs = plot_signals(None, "0", sig_0, ["time"], ["v(in)", "v(delay)"])
  axs = plot_signals(axs, "1", sig_1, ["time"], ["v(delay)"])
  axs = plot_signals(axs, "2", sig_2, ["time"], ["v(delay)"])
  axs = plot_signals(axs, "3", sig_3, ["time"], ["v(delay)"])
  axs = plot_signals(axs, "4", sig_4, ["time"], ["v(delay)"])
  axs = plot_signals(axs, "5", sig_5, ["time"], ["v(delay)"])
  axs = plot_signals(axs, "6", sig_6, ["time"], ["v(delay)"])
  axs = plot_signals(axs, "7", sig_7, ["time"], ["v(delay)"])
  
  plt.show()


  
if __name__ == "__main__":
  plot_fine_delay_tb()
  #find_time_diff()
  
