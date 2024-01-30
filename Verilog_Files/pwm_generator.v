`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.09.2023 00:54:49
// Design Name: 
// Module Name: pwm
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


module pwm_generator(
input wire clk,
input wire rst,
output wire signal,
output wire clkbuf,
output reg status
    );
    reg sig;
    wire [7:0] count;
    
    program_counter counter_0(.clk(clk), .rst(status), .count(count));
    always @(posedge clk) begin
    status <= !rst;
    if(count < 8'd50)
        sig = 1'b0;
    else
        sig = 1'b1;
    end
    assign signal = sig;
    assign clkbuf = clk;
endmodule
