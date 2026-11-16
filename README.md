# FPGA Verilog Labs

Verilog HDL coursework from **CSCI 4532 (Intro to FPGA)**, written for an Altera/Intel DE-series board (Cyclone-class FPGA with a 50 MHz clock and on-board red LEDs).

## Modules

### `knight_rider.v`
Recreates the sweeping "KITT" light bar from *Knight Rider* across the board's 10 red LEDs (`LEDR[9:0]`).

- A `clock_divider` submodule scales the 50 MHz system clock (`CLOCK_50`) down to a visible rhythm using a 22-bit counter.
- A 4-bit position counter bounces between LED 0 and LED 8, reversing direction at each end, and a one-hot shift (`1 << count`) lights the single active LED.

### `fpga_breadboard.v`
A breadboard lab driving two LEDs from two pushbuttons, each pair operating independently.

- `pushb1` controls the red LED, `pushb2` the green LED (buttons are active-low: pressed = 0).
- Each button is handled in its own `always` block so the two channels never interfere.

## Notes
- Targeted at Quartus-based synthesis for an Altera DE-series development board.
- Pin assignments were configured in the board's `.qsf` (not included — these are the HDL sources only).

Author: Michael Ford · 2023
