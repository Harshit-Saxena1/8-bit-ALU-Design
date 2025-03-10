module ALU_8_bit(input [7:0]A, B, input [3:0]select, output reg [7:0]ALU_out);

  always @ (*) begin
    case(select)

      4'b0000: ALU_out = A + B;                     // Add A and B
      4'b0001: ALU_out = A - B;                     // Subtract B from A
      4'b0010: ALU_out = A * B;                     // Multiply A and B
      4'b0011: ALU_out = (B != 0) ? A / B : 8'b0;   // Divide A by B, return 0 if B is 0
      4'b0100: ALU_out = A << 1;                    // Logical left shift A by 1
      4'b0101: ALU_out = A >> 1;                    // Logical right shift A by 1
      4'b0110: ALU_out = {A[6:0], A[7]};            // Rotate A left (MSB to LSB)
      4'b0111: ALU_out = {A[0], A[7:1]};            // Rotate A right (LSB to MSB)
      4'b1000: ALU_out = A & B;                     // Bitwise AND of A and B
      4'b1001: ALU_out = A | B;                     // Bitwise OR of A and B
      4'b1010: ALU_out = A ^ B;                     // Bitwise XOR of A and B
      4'b1011: ALU_out = ~(A | B);                  // Bitwise NOR (NOT OR) of A and B
      4'b1100: ALU_out = ~(A & B);                  // Bitwise NAND (NOT AND) of A and B
      4'b1101: ALU_out = ~(A ^ B);                  // Bitwise XNOR (NOT XOR) of A and B
      4'b1110: ALU_out = (A > B) ? 8'd1 : 8'd0;     // Compare A > B, return 1 if true, else 0
      4'b1111: ALU_out = (A == B) ? 8'd1 : 8'd0;    // Compare A == B, return 1 if true, else 0
      default: ALU_out = 8'bx;                      // Default case, undefined output
      
    endcase
  end

endmodule
