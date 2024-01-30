`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.09.2023 10:25:45
// Design Name: 
// Module Name: counter
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


module program_counter(
input clk,
input rst,
output reg[7:0] count
    );
reg [11:0] clk_sub;
reg new_clk;
always @ (posedge clk) begin
    if(!rst || count == 7'd100)
        count <= 0;
    else
        count <= count + 1;
end
endmodule
