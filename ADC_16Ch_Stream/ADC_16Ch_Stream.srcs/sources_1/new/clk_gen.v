`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/14/2022 01:42:53 PM
// Design Name: 
// Module Name: clk_gen
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


module clk_gen(
    input wire sys_clk,
    input wire reset,
    
    output wire chop_clk_ccia,
    output wire clk_aux_p1,
    output wire clk_aux_p2,
    output wire chop_clk_aux,
    output wire auxbuf_ctrl,
    
    output wire chop_clk_tia,
    output wire rst_tia
    );
    

clk_gen_CCIA clk_U0 (
    .clk_in(sys_clk),
    .rst(reset),
    .chop_clk(chop_clk_ccia),
    .clk_aux_p1(clk_aux_p1),
    .clk_aux_p2(clk_aux_p2),
    .chop_clk_aux(chop_clk_aux),
    .auxbuf_ctrl(auxbuf_ctrl)
 );
     
 clk_gen_TIA clk_U1 (
    .clk_in(sys_clk),
    .rst(reset),
    .chop_clk(chop_clk_tia),
    .rst_tia(rst_tia)
 );

endmodule
