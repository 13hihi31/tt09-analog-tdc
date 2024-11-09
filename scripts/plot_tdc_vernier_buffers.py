from pathlib import Path
import matplotlib.pyplot as plt
import numpy as np

from read_signals import read_output_signals, plot_signals, find_transitions


def plot_tdc_vernier_buffers_tb():
  wrdata_output = Path("~/.xschem/simulations/tdc_vernier_buffers_parax_tb.txt").expanduser()
  
  signals = read_output_signals(wrdata_output)
  
  plot_signals(
    signals, 
    ["time", "time"],
    [
      "v(start)",
      "v(stop)",
    ],
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
  plot_tdc_vernier_buffers_tb()
  
