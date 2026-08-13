# Full Subtractor in Verilog

## Overview

This project implements a **1-bit Full Subtractor** using Verilog HDL.

A Full Subtractor subtracts two input bits along with a borrow input.

### Inputs

- A (Minuend)
- B (Subtrahend)
- Bin (Borrow In)

### Outputs

- Difference (D)
- Borrow Out (Bout)

## Truth Table

| A | B | Bin | Difference | Borrow |
|---|---|-----|------------|--------|
|0|0|0|0|0|
|0|0|1|1|1|
|0|1|0|1|1|
|0|1|1|0|1|
|1|0|0|1|0|
|1|0|1|0|0|
|1|1|0|0|0|
|1|1|1|1|1|

## Boolean Equations

Difference = A ^ B ^ Bin

Borrow = (~A & B) | (~A & Bin) | (B & Bin)

## Files

```
src/
    full_subtractor.v

testbench/
    full_subtractor_tb.v

simulation/
    waveform.png
```

## Simulation

The design was simulated using **Icarus Verilog** and **GTKWave**.

Compile

```bash
iverilog -o full_subtractor src/full_subtractor.v testbench/full_subtractor_tb.v
```

Run

```bash
vvp full_subtractor
```

View Waveform

```bash
gtkwave full_subtractor.vcd
```

## Author

Your Name