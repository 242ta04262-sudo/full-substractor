# Full Subtractor using Verilog

## Overview

This project implements a **1-bit Full Subtractor** using Verilog HDL. A full subtractor performs subtraction of three binary inputs:

- A (Minuend)
- B (Subtrahend)
- Bin (Borrow In)

It produces:

- Difference (Diff)
- Borrow Out (Bout)

## Boolean Equations

Difference = A ^ B ^ Bin

Borrow Out = (~A & B) | (~A & Bin) | (B & Bin)

## Truth Table

| A | B | Bin | Diff | Bout |
|---|---|-----|------|------|
|0|0|0|0|0|
|0|0|1|1|1|
|0|1|0|1|1|
|0|1|1|0|1|
|1|0|0|1|0|
|1|0|1|0|0|
|1|1|0|0|0|
|1|1|1|1|1|

## Folder Structure

```
src/
tb/
simulation/
```

## Tools Used

- Verilog HDL
- ModelSim / Vivado Simulator / Icarus Verilog
- GTKWave (optional)

## How to Simulate

Using Icarus Verilog:

```bash
iverilog -o fs src/full_subtractor.v tb/full_subtractor_tb.v
vvp fs
```

To generate waveform:

```bash
gtkwave full_subtractor.vcd
```

## Author

Your Name