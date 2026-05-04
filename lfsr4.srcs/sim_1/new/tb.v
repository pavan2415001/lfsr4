`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.04.2026 20:27:32
// Design Name: 
// Module Name: tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb(

    );
    reg clk,rst;
    wire [3:0]a;
    lfsr dut(.a(a),.clk(clk),.rst(rst));
    always #5 clk=~clk;
    initial begin
    clk=0;
    rst=1;
    @(negedge clk); rst=0;
   repeat(10)@(negedge clk); 
  @(negedge clk); rst=1;
  @(negedge clk);rst=0;
  repeat(4) @(negedge clk);
  
  $finish;
  end
endmodule
