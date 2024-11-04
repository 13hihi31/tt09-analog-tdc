from pathlib import Path
import matplotlib.pyplot as plt
import numpy as np

from read_signals import read_output_signals, plot_signals, find_transitions


def plot_tdc_vernier_delay_line_tb():
  wrdata_output = Path("~/.xschem/simulations/tdc_vernier_delay_line_diff_gen_tb.txt").expanduser()
  
  signals = read_output_signals(wrdata_output)
  
  time = signals["time"].to_numpy()
  v_start_pos = signals["v(x1.start_pos)"].to_numpy()
  v_start_neg = signals["v(x1.start_neg)"].to_numpy()
  v_stop_strong = signals["v(x1.stop_strong)"].to_numpy()
  
  pos_rise, pos_fall = find_transitions(v_start_pos, 1.8/2)
  neg_rise, neg_fall = find_transitions(v_start_neg, 1.8/2)
  stop_rise, stop_fall = find_transitions(v_stop_strong, 1.8/2)
  
  time_pos_rise = time[pos_rise]
  time_pos_fall = time[pos_fall]
  time_neg_rise = time[neg_rise]
  time_neg_fall = time[neg_fall]
  time_stop_rise = time[stop_rise]
  
  print(time_pos_rise, time_pos_fall, time_neg_rise, time_neg_fall, time_neg_fall, time_stop_rise)
  
  rise_fall_diff = time_pos_rise - time_neg_fall
  fall_rise_diff = time_pos_fall - time_neg_rise
  pos_stop_diff = time_pos_rise - time_stop_rise
  
  print(rise_fall_diff, fall_rise_diff, pos_stop_diff)
  
  plot_signals(
    signals, 
    ["time"], 
    [
      "v(start)",
      "v(stop)",
      "v(x1.start_pos)",
      "v(x1.start_neg)",
      "v(x1.stop_strong)",
    ],
  )

  
if __name__ == "__main__":
  plot_tdc_vernier_delay_line_tb()
  
