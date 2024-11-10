from pathlib import Path
import matplotlib.pyplot as plt
import numpy as np
import pandas as pd

from read_signals import read_output_signals, plot_signals, find_transitions

if __name__ == "__main__":
  wrdata_output = Path("~/.xschem/simulations/tdc_test_signals_tb.txt").expanduser()
  
  signals = read_output_signals(wrdata_output)
  
  time = signals["time"].to_numpy()
  start = signals["v(start)"].to_numpy()
  stop = signals["v(stop)"].to_numpy()
  
  start_rise, start_fall = find_transitions(start, 1.8/2)
  stop_rise, stop_fall = find_transitions(stop, 1.8/2)
  
  time_start_rise = time[start_rise]
  time_start_fall = time[start_fall]
  
  time_stop_rise = time[stop_rise]
  time_stop_fall = time[stop_fall]
  
  t_diff = time_stop_rise - time_start_rise[:len(time_stop_rise)]
  print(time[-1])
  print(t_diff)
  
  time_diff = np.array([None] * len(time))
  time_diff[stop_rise] = time_stop_rise - time_start_rise[:len(time_stop_rise)]
  time_diff = pd.Series(time_diff).interpolate(method="pad")
  
  _, axs = plt.subplots(2, 1)
  axs[0].plot(time * 1e9, start, label="start")
  axs[0].plot(time * 1e9, stop, label="stop")
  #axs.plot(time_start_rise, np.ones_like(time_start_rise) * 0.9, "*")
  #axs.plot(time_stop_rise, np.ones_like(time_stop_rise) * 0.9, "*")
  axs[0].legend()
  axs[1].plot(time * 1e9, time_diff * 1e12)
  axs[1].grid()
  plt.show()
  
