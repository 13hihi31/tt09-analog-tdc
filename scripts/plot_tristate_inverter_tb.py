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
  
  

def plot_tristate_inverter_tb():
  wrdata_output_9313 = Path("~/.xschem/simulations/tristate_inverter_9313_tb.txt").expanduser()
  signals_9313 = read_output_signals(wrdata_output_9313)
  
  axs = plot_signals(
    None,
    "9313",
    signals_9313, 
    ["time"],
    [
      "v(in)",
      "v(out)",
    ],
  )
  
  wrdata_output_9933 = Path("~/.xschem/simulations/tristate_inverter_9933_tb.txt").expanduser()
  signals_9933 = read_output_signals(wrdata_output_9933)
  
  plot_signals(
    axs,
    "9933",
    signals_9933, 
    ["time"],
    [
      "v(in)",
      "v(out)",
    ],
  )
  
  wrdata_output_3931 = Path("~/.xschem/simulations/tristate_inverter_3931_tb.txt").expanduser()
  signals_3931 = read_output_signals(wrdata_output_3931)
  
  plot_signals(
    axs,
    "3931",
    signals_3931, 
    ["time"],
    [
      "v(in)",
      "v(out)",
    ],
  )
  
  plt.show()

  
if __name__ == "__main__":
  plot_tristate_inverter_tb()
  
