from pathlib import Path
import matplotlib.pyplot as plt
import numpy as np

from read_signals import read_output_signals, plot_signals, find_transitions


def decimante_signal(signal: np.ndarray, decimation: int, exception_idxs: np.ndarray, exception_window: int) -> np.ndarray:
  if len(exception_idxs) == 0:
    return signal[::decimation]
    
  slices = []
  
  previous_idx = 0
  for idx in exception_idxs:
    slices.append(signal[previous_idx:idx])
    previous_idx = idx
  
  slices.append(signal[previous_idx:])
  
  slices_decimated = []
  
  for slice_1, slice_2 in zip(slices[:-1], slices[1:]):
    slices_decimated.append(slice_1[:-(exception_window // 2):decimation])
    slices_decimated.append(slice_1[-(exception_window // 2):])
    slices_decimated.append(slice_2[:(exception_window // 2)])
    slices_decimated.append(slice_2[(exception_window // 2)::decimation])
      
  return np.stack([signal[start:stop] for idx in exception_idxs])


