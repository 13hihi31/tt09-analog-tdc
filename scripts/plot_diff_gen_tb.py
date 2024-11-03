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


def plot_diff_gen_tb():
  wrdata_output = Path("~/.xschem/simulations/diff_gen_tb.txt").expanduser()
  
  signals = read_output_signals(wrdata_output)
  
  plot_signals(signals, ["time", "time"], ["v(buffered)", "v(delayed)"], ["v(pos)", "v(neg)"])
  
  time = signals["time"].to_numpy()
  v_buffered = signals["v(buffered)"].to_numpy()
  v_delayed = signals["v(delayed)"].to_numpy()
  v_pos = signals["v(pos)"].to_numpy()
  v_neg = signals["v(neg)"].to_numpy()
  
  input_diff = v_buffered - (1.8 - v_delayed)
  output_diff = v_pos - (1.8 - v_neg)
  
  _, axs = plt.subplots(2, 1)
  axs[0].plot(time, input_diff, label="buffered - delayed")
  axs[0].grid()
  axs[0].legend()
  axs[1].plot(time, output_diff, label="pos - neg")
  axs[1].set_xlabel("time")
  axs[1].grid()
  axs[1].legend()
  plt.show()


def plot_tdc_tb_1():
  wrdata_output = Path("~/.xschem/simulations/tdc_tb.txt").expanduser()
  
  signals = read_output_signals(wrdata_output)
  
  plot_signals(
    signals, 
    ["time"], 
    [
      "v(x1.start_pos)",
      "v(x1.start_neg)",
      "v(x1.delay_pos_0)",
      "v(x1.delay_neg_0)",
      "v(x1.delay_pos_1)",
      "v(x1.delay_neg_1)",
      "v(x1.delay_pos_2)",
      "v(x1.delay_neg_2)",
      "v(x1.delay_pos_3)",
      "v(x1.delay_neg_3)",
      "v(x1.delay_pos_4)",
      "v(x1.delay_neg_4)",
      "v(x1.delay_pos_5)",
      "v(x1.delay_neg_5)",
      "v(x1.delay_pos_6)",
      "v(x1.delay_neg_6)",
      "v(x1.delay_pos_7)",
      "v(x1.delay_neg_7)",
    ],
  )
  
  
def plot_tdc_tb_2():
  wrdata_output = Path("~/.xschem/simulations/tdc_tb.txt").expanduser()
  
  signals = read_output_signals(wrdata_output)
  
  plot_signals(
    signals, 
    ["time", "time"], 
    [
      "v(x1.delay_pos_1)",
      "v(x1.delay_neg_1)",
      "v(x1.stop_strong)",
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


def plot_tdc_tb_3():
  wrdata_output = Path("~/.xschem/simulations/tdc_tb.txt").expanduser()
  
  signals = read_output_signals(wrdata_output)
  
  plot_signals(
    signals,
    ["time"],
    ["v(start)", "v(stop)", "v(x1.start_pos)", "v(x1.start_neg)", "v(x1.stop_strong)"],
  )
  
  
def plot_tdc_tb_4():
  wrdata_output = Path("~/.xschem/simulations/tdc_small_step_tt_tb.txt").expanduser()
  
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
  
  
def plot_saff():
  wrdata_output = Path("~/.xschem/simulations/saff_tb.txt").expanduser()
  
  signals = read_output_signals(wrdata_output)
  
  plot_signals(
    signals,
    ["time", "time", "time"],
    ["v(d)", "v(clk)", "v(q)"],
    ["v(d)", "v(nd)", "v(clk)", "v(q)", "v(nq)"],
    ["v(x1.left_latch_1)", "v(x1.right_latch_1)", "v(x1.left_latch_2)", "v(x1.right_latch_2)"],
  )
  

def plot_saff_post_layout():
  wrdata_output = Path("~/.xschem/simulations/saff_tb_post_layout.txt").expanduser()
  
  signals = read_output_signals(wrdata_output)
  
  plot_signals(
    signals,
    ["time", "time"],
    ["v(d)", "v(clk)", "v(q)"],
    ["v(d)", "v(nd)", "v(clk)", "v(q)", "v(nq)"],
  )
  

def plot_tdc_vernier_delay_line_tb():
  wrdata_output = Path("~/.xschem/simulations/tdc_vernier_delay_line_tb.txt").expanduser()
  
  signals = read_output_signals(wrdata_output)
  
  plot_signals(
    signals, 
    ["time"], 
    [
      "v(start)",
      "v(stop)",
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
  #plot_tdc_tb_1()
  #plot_tdc_tb_2()
  #plot_tdc_tb_4()
  #plot_saff()
  #plot_saff_post_layout()
  #plot_diff_gen_tb()
  plot_tdc_vernier_delay_line_tb()
  
