from pathlib import Path
import re

import matplotlib.pyplot as plt
import numpy as np
import pandas as pd


def read_output_signals(wrdata_output: Path) -> pd.DataFrame:
  frame = pd.read_csv(wrdata_output, sep="\s+")
    
  # remove duplicate time signals
  duplicate_time_column_names = [column for column in frame.columns if re.match("time\.\d+", column)]
  frame.drop(duplicate_time_column_names, axis=1, inplace=True)
    
  return frame


def plot_signals(signals: pd.DataFrame, x_sig_names: list[str], *y_sigs_names: list[str]):
  assert len(x_sig_names) == len(y_sigs_names), "The x-signals and y-signals have to have the same length"
  
  fig, axs = plt.subplots(len(x_sig_names), 1)
  
  if len(x_sig_names) == 1:
    axs = [axs]
  
  for ax_idx, (x_sig, y_sig_names) in enumerate(zip(x_sig_names, y_sigs_names)):
    for y_sig in y_sig_names:
      axs[ax_idx].plot(signals[x_sig].values, signals[y_sig].values, label=f"{y_sig}")
    axs[ax_idx].set_xlabel(x_sig)
    axs[ax_idx].legend()
    axs[ax_idx].grid()
    
  plt.show()
  
  
def find_transitions(signal: np.ndarray, midpoint: float) -> tuple[np.ndarray, np.ndarray]:  
  signal_sign = np.sign(signal - midpoint)
  signal_sign_diff = np.diff(signal_sign, prepend=signal_sign[0])
  
  rising_edge_sample_idxs = (signal_sign_diff > 1.5).nonzero()[0]
  falling_edge_sample_idxs = (signal_sign_diff < -1.5).nonzero()[0]
  
  return rising_edge_sample_idxs, falling_edge_sample_idxs
  
