<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

A Pseudo-Differential Time to Digital Converter (TDC)

## How to test

The TDC has one analog input that is then split into start and stop signals. Because this TDC has a resolution of around 80 ps, it would be difficult to provide signals with such a small phase difference, that is why there is an extra variable delay circuit that delays the stop signal relative to the start signal. You can change the stop signal delay by configuring the digital input. To test the circuit drive the stop signal for a given configuration of delay.

## External hardware

No external hardware needed.

