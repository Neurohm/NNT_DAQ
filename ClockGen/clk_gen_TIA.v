`timescale 100ps / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: NanoNeuroTech Lab, Purdue
// Engineer: Om Kolhe
// 
// Create Date: 04/13/2022 01:08:16 AM
// Design Name: Testbench Control + Acquisition 
// Module Name: clk_gen_TIA
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Module to generate the clock signals for the chopper stabilized transimpedance amplifier. 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module clk_gen_TIA(
    input clk_in,
    input rst,
    output chop_clk,
    output rst_tia
    );
    
    reg [15:0] count_reg1 = 0;
    reg [15:0] count_reg2 = 0;
    reg chop_clk1 = 0;
    reg rst_tia_1 = 0;
    
    assign chop_clk =  chop_clk1;
    assign rst_tia = rst_tia_1;
    
    always @(posedge clk_in or posedge rst) begin
    if (rst) begin
        count_reg1 <= 0;
        chop_clk1 <= 0;
    end else begin
        if (count_reg1 < 1999) begin
            count_reg1 <= count_reg1 + 1;
        end else begin
            count_reg1 <= 0;
            chop_clk1 <= !chop_clk1;
        end
    end
    
    if (rst) begin
        count_reg2 <= 0;
        rst_tia_1 <= 0;
    end else begin
        if (count_reg2 < 9999) begin
            count_reg2 <= count_reg2 + 1;
        end else begin
            count_reg2 <= 0;
            rst_tia_1 <= !rst_tia_1;
        end
    end
end
endmodule
