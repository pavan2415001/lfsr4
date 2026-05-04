`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.04.2026 19:44:56
// Design Name: 
// Module Name: lfsr
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
    module lfsr(
        input clk,
        input rst,
        output reg [3:0] a
    );
    
    always @(posedge clk)
    begin
        if(rst)
            a <= 4'b0001;
        else
            a <= {a[2:0], a[3]^a[0]};
    end
    
    endmodule
