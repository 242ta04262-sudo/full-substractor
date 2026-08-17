# Full Subtractor Using Verilog

## 📌 Project Description

This project implements a **Full Subtractor** using Verilog HDL.

A Full Subtractor is a combinational logic circuit used to subtract two 1-bit binary numbers along with a borrow input.

It has three inputs:

* A — Minuend
* B — Subtrahend
* Bin — Borrow In

It produces two outputs:

* Difference
* Bout — Borrow Out

## 🎯 Objective

To design and simulate a Full Subtractor using Verilog HDL and verify its operation using a testbench.

## 🛠️ Tools Used

* Verilog HDL
* Icarus Verilog
* GTKWave
* GitHub

## 📋 Truth Table

| A | B | Bin | Difference | Bout |
| - | - | --- | ---------- | ---- |
| 0 | 0 | 0   | 0          | 0    |
| 0 | 0 | 1   | 1          | 1    |
| 0 | 1 | 0   | 1          | 1    |
| 0 | 1 | 1   | 0          | 1    |
| 1 | 0 | 0   | 1          | 0    |
| 1 | 0 | 1   | 0          | 0    |
| 1 | 1 | 0   | 0          | 0    |
| 1 | 1 | 1   | 1          | 1    |

## 🔑 Logic Equations

```text
Difference = A XOR B XOR Bin

Bout = (~A & B) | (~A & Bin) | (B & Bin)
```

## 💻 Verilog Code

The Full Subtractor is implemented using XOR, AND, OR, and NOT logic operations.

## 🧪 Testbench

The testbench applies all eight possible combinations of A, B, and Bin and observes the Difference and Borrow Out outputs.

## ▶️ Simulation

Compile the Verilog files:

```bash
iverilog -o full_subtractor_sim full_subtractor.v full_subtractor_tb.v
```

Run the simulation:

```bash
vvp full_subtractor_sim
```

To view the waveform using GTKWave:

```bash
gtkwave full_subtractor.vcd
```

## 📊 Expected Output

The simulation output should match the Full Subtractor truth table for all eight input combinations.

## ✅ Conclusion

The Full Subtractor was successfully designed and simulated using Verilog HDL. The simulation results match the expected truth table for all possible combinations of inputs.
