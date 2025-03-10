`timescale 1ns/1ps
`include "ALU_8_bit.v"

module ALU_8_bit_tb;
reg [7:0]A,B;
reg [3:0]select;
wire [7:0]ALU_out;

ALU_8_bit uut(A,B,select,ALU_out);

initial begin
$dumpfile("ALU_8_bit_tb.vcd");
$dumpvars(0,ALU_8_bit_tb);

    A = 8'd125;
    B = 8'd5;
    select = 4'b0000; #10; // Test Addition operation
    $display("Add: A = %d, B = %d, Output = %d", A, B, ALU_out);

    select = 4'b0001; #10; // Test Subtraction operation
    $display("Subtract: A = %d, B = %d, Output = %d", A, B, ALU_out);

    select = 4'b0010; #10; // Test Multiplication operation
    $display("Multiply: A = %d, B = %d, Output = %d", A, B, ALU_out);

    select = 4'b0011; #10; // Test Division operation
    $display("Divide: A = %d, B = %d, Output = %d", A, B, ALU_out);

    select = 4'b0100; #10; // Test Logical Left Shift operation
    $display("Left Shift: A = %d, Output = %d", A, ALU_out);

    select = 4'b0101; #10; // Test Logical Right Shift operation
    $display("Right Shift: A = %d, Output = %d", A, ALU_out);

    select = 4'b0110; #10; // Test Rotate Left operation
    $display("Rotate Left: A = %d, Output = %d", A, ALU_out);

    select = 4'b0111; #10; // Test Rotate Right operation
    $display("Rotate Right: A = %d, Output = %d", A, ALU_out);

    select = 4'b1000; #10; // Test Bitwise AND operation
    $display("AND: A = %d, B = %d, Output = %d", A, B, ALU_out);

    select = 4'b1001; #10; // Test Bitwise OR operation
    $display("OR: A = %d, B = %d, Output = %d", A, B, ALU_out);

    select = 4'b1010; #10; // Test Bitwise XOR operation
    $display("XOR: A = %d, B = %d, Output = %d", A, B, ALU_out);

    select = 4'b1011; #10; // Test Bitwise NOR operation
    $display("NOR: A = %d, B = %d, Output = %d", A, B, ALU_out);

    select = 4'b1100; #10; // Test Bitwise NAND operation
    $display("NAND: A = %d, B = %d, Output = %d", A, B, ALU_out);

    select = 4'b1101; #10; // Test Bitwise XNOR operation
    $display("XNOR: A = %d, B = %d, Output = %d", A, B, ALU_out);

    select = 4'b1110; #10; // Test Greater Than operation
    $display("Greater: A = %d, B = %d, Output = %d", A, B, ALU_out);

    select = 4'b1111; #10; // Test Equality operation
    $display("Equality: A = %d, B = %d, Output = %d", A, B, ALU_out);

    // Test division by zero
    A = 8'd10; B = 8'd0; select = 4'b0011; #10;
    $display("Divide by Zero: A = %d, B = %d, Output = %d", A, B, ALU_out);

    // Finish simulation
    $finish;
end

endmodule