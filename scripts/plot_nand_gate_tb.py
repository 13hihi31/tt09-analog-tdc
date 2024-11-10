from pathlib import Path
import matplotlib.pyplot as plt
import numpy as np

from read_signals import read_output_signals, plot_signals, find_transitions


if __name__ == "__main__":
  wrdata_output = Path("~/.xschem/simulations/nand_gate_tb.txt").expanduser()
  
  signals = read_output_signals(wrdata_output)
  
  plot_signals(
    signals, 
    ["time"],
    [
      "v(start)",
      "v(stop)",
      "v(out)",
    ]
  )
  
