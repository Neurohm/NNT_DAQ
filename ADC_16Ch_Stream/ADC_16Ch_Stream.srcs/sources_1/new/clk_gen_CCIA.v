`timescale 100ps / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: NanoNeuroTech Lab, Purdue
// Engineer: Om Kolhe
// 
// Create Date: 04/13/2022 01:08:16 AM
// Design Name: Testbench Control + Acquisition 
// Module Name: clk_gen_CCIA
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Module to generate the clock signals for the chopper stabilized capacitively coupled neural amplifier. 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module clk_gen_CCIA(
    input clk_in,
    input rst,
    output chop_clk,
    output clk_aux_p1,
    output clk_aux_p2,
    output chop_clk_aux,
    output auxbuf_ctrl
    );
    
    reg [17:0] count_reg = 0;
    reg chop_clk1 = 0;
    reg clk_aux_p1_1 = 0;
    reg clk_aux_p2_1 = 1;
    reg chop_clk_aux1 = 0;
    
    assign chop_clk =  chop_clk1;
    assign clk_aux_p1 = clk_aux_p1_1;
    assign clk_aux_p2 = clk_aux_p2_1;
    assign chop_clk_aux = chop_clk_aux1;
    assign auxbuf_ctrl = clk_aux_p1 | clk_aux_p2;
    
    always @(posedge clk_in or posedge rst) begin
    if (rst) begin
        count_reg <= 0;
        chop_clk1 <= 0;
        clk_aux_p1_1 <= 0;
        clk_aux_p2_1 <= 1;
        chop_clk_aux1 <= 0;
    end else begin
        if (count_reg < 6249) begin
            count_reg <= count_reg + 1;
        end else begin
            count_reg <= 0;
            chop_clk1 <= !chop_clk1;
            clk_aux_p2_1 <= !clk_aux_p2;
            chop_clk_aux1 <= !chop_clk_aux1;
        end
        
        if (count_reg ==  3174) begin
            clk_aux_p1_1 <= !clk_aux_p1;
        end  
        
        if (count_reg ==  3124) begin
            chop_clk1 <= !chop_clk1;
            clk_aux_p1_1 <= !clk_aux_p1;
        end
        
        if (count_reg ==  49) begin
            clk_aux_p2_1 <= !clk_aux_p2;
        end     
    end   
end
    
endmodule


