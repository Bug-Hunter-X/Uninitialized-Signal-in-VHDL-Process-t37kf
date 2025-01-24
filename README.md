# Uninitialized Signal in VHDL Process

This repository demonstrates a common error in VHDL: using an uninitialized signal within a process. The code attempts to increment the 'data' signal upon each clock edge without initializing it, leading to unpredictable behavior during simulation and synthesis.  The solution shows how to properly initialize the signal.

## Bug

The `bad_process.vhdl` file contains the buggy VHDL code. The signal `data` is incremented within the process but is never initialized, resulting in an undefined initial value.

## Solution

The `bad_process_solution.vhdl` file provides the corrected code.  The signal `data` is now properly initialized to 0 before the process starts.