# 8-bit-ALU-Design
This project implements an 8-bit Arithmetic Logic Unit (ALU) in Verilog, capable of performing sixteen different operations based on a 4-bit select input. The supported operations include arithmetic functions such as addition, subtraction, multiplication, and division, as well as bitwise operations like AND, OR, XOR, NOR, NAND, and XNOR. It also includes logical and arithmetic shifts, rotate operations, and comparison functions to check for equality and greater-than conditions. A corresponding testbench ('ALU_8_bit_tb.v') is provided to verify the ALU's functionality by applying a set of test cases and generating a waveform ('ALU_8_bit_tb.vcd') for simulation analysis. The testbench ensures proper handling of edge cases, including division by zero and boundary conditions for various operations. This project is designed to serve as a fundamental building block for digital circuits and can be integrated into larger systems such as CPUs and DSPs.
