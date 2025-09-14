from pathlib import Path
import matplotlib.pyplot as plt
import numpy as np

from read_signals import read_output_signals, plot_signals, find_transitions


def plot_tdc_vernier_buffers_tb():
  wrdata_output = Path("~/.xschem/simulations/test_tt_um_13hihi31_tdc_andpwr_parax").expanduser()
  
  signals = read_output_signals(wrdata_output)
  
  plot_signals(
    signals, 
    ["time", "time"],
    [
      "v(in)",
      "v(analog_input)",
      "v(start)",
      #"v(x1.stop)",
      #"v(x1.start)",
      #"v(x1.stop_delayed)", 
      #"v(x1.start_delayed)",
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
  
