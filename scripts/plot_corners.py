from pathlib import Path
import matplotlib.pyplot as plt
import numpy as np
from numpy.lib.stride_tricks import sliding_window_view

from read_signals import read_output_signals, plot_signals, find_transitions
  

def plot_transfer_curve(ax, wrdata_output_path: str, label: str) -> None:
  wrdata_output = Path(wrdata_output_path).expanduser()
  
  signals = read_output_signals(wrdata_output)
  
  midpoint = 1.8 / 2
  
  time = signals["time"].to_numpy()
  start = signals["v(start)"].to_numpy()
  stop = signals["v(stop)"].to_numpy()
  
  term_0 = signals["v(term_0)"].to_numpy()
  term_1 = signals["v(term_1)"].to_numpy()
  term_2 = signals["v(term_2)"].to_numpy()
  term_3 = signals["v(term_3)"].to_numpy()
  term_4 = signals["v(term_4)"].to_numpy()
  term_5 = signals["v(term_5)"].to_numpy()
  term_6 = signals["v(term_6)"].to_numpy()
  term_7 = signals["v(term_7)"].to_numpy()
  
  start_rise_idxs, start_fall_idxs = find_transitions(start, midpoint)
  stop_rise_idxs, stop_fall_idxs = find_transitions(stop, midpoint)
  
  term_0_rise_idxs = find_transitions(term_0, midpoint)[0]
  term_1_rise_idxs = find_transitions(term_1, midpoint)[0]
  term_2_rise_idxs = find_transitions(term_2, midpoint)[0]
  term_3_rise_idxs = find_transitions(term_3, midpoint)[0]
  term_4_rise_idxs = find_transitions(term_4, midpoint)[0]
  term_5_rise_idxs = find_transitions(term_5, midpoint)[0]
  term_6_rise_idxs = find_transitions(term_6, midpoint)[0]
  term_7_rise_idxs = find_transitions(term_7, midpoint)[0]
  
  delays = time[stop_rise_idxs] - time[start_rise_idxs]
  
  term_stop_idx = [
    0,
    np.searchsorted(stop_rise_idxs, term_0_rise_idxs[0], side="right"),
    np.searchsorted(stop_rise_idxs, term_1_rise_idxs[0], side="right"),
    np.searchsorted(stop_rise_idxs, term_2_rise_idxs[0], side="right"),
    np.searchsorted(stop_rise_idxs, term_3_rise_idxs[0], side="right"),
    np.searchsorted(stop_rise_idxs, term_4_rise_idxs[0], side="right"),
    np.searchsorted(stop_rise_idxs, term_5_rise_idxs[0], side="right"),
    np.searchsorted(stop_rise_idxs, term_6_rise_idxs[0], side="right"),
    np.searchsorted(stop_rise_idxs, term_7_rise_idxs[0], side="right"),
    -1,
  ]
  term_values = [0, 0, 1, 2, 3, 4, 5, 6, 7, 8]
  
  ax.step(delays[term_stop_idx], term_values, label=label)
  

def plot_tranfer_curves_corners() -> None:
  _, ax = plt.subplots(1, 1)
  plot_transfer_curve(ax, "../../tdc_corners/tdc_small_step_sf_tb.txt", label="SF")
  plot_transfer_curve(ax, "../../tdc_corners/tdc_small_step_fs_tb.txt", label="FS")
  plot_transfer_curve(ax, "../../tdc_corners/tdc_small_step_ss_tb.txt", label="SS")
  plot_transfer_curve(ax, "../../tdc_corners/tdc_small_step_ff_tb.txt", label="FF")
  plot_transfer_curve(ax, "../../tdc_corners/tdc_small_step_tt_tb.txt", label="TT")
  ax.legend()
  ax.grid()
  ax.set_xlabel("phase diff [s]")
  ax.set_ylabel("tdc output")
  plt.show()
  
  
def plot_corners() -> None:
  #wrdata_output = Path("../../tdc_corners/tdc_small_step_sf_tb.txt").expanduser()
  wrdata_output = Path("~/.xschem/simulations/tdc_small_step_tt_tb_post_layout.txt").expanduser()
  
  signals = read_output_signals(wrdata_output)
  
  plot_signals(
    signals, 
    ["time"],
    [
      "v(term_0)",
      "v(term_1)",
      "v(term_2)",
      "v(term_3)",
      "v(term_4)",
      "v(term_5)",
      "v(term_6)",
      "v(term_7)",
    ],
  )


if __name__ == "__main__":
  #plot_transitions()
  plot_corners()
  #plot_tranfer_curves_corners()
  
