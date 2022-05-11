`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Purdue University NanoNeuroTech Lab
// Engineer: Om Kolhe
// 
// Create Date: 05/06/2022 03:52:11 PM
// Design Name: ADC to input FIFO
// Module Name: ADC_SPI_ControlADC_inFIFO
// Project Name: Testing bed for NxP 
// Target Devices: XEM7301-A200 Board
// Tool Versions: 
// Description: ADC used: AD7684 16-Bit, 100 kSPS PulSAR, Differential ADC from Analog Devices
//              The testing module for testing writing from ADC to the input FIFO
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ADC_inFIFO(
    input wire data_clk,
    input wire reset,
    input wire sampling_en,
    input wire [15:0] channel_sel,
    input wire [31:0] freq,

    // ADC interfacing
    input wire [15:0] DOUT,
    output wire CS,

    // FIFO signals 
    input wire rd_clk,
    input wire rd_en,
    output wire [255:0] fifo_out,
    output wire full,
    output wire wr_ack,
    output wire empty,
    output wire fifo_valid,
    
    output wire [7:0] rd_data_count,
    output wire [7:0] wr_data_count
    );

    wire [255:0] adc_fifo_data;
    wire [255:0] fifo_out_data;
    wire wr_en;
    
    // always @(posedge rd_clk) fifo_out <= fifo_out_data;

    // ADC SPI Controller instantation 

    ADC_SPI_Control #(
        .N_CYCLES_WAIT_ADC (5),
        .ADC_RESOLUTION (16)
    )
    spi_con_inst(
        .clk (data_clk),
        .reset(reset),
        .sampling_en(sampling_en),
        .DOUT(DOUT),
        .channel_sel(channel_sel),
        .freq(freq),
        .sample_data(adc_fifo_data),
        .valid(wr_en),
        .CS(CS)
    );

    // Input FIFO instantation 
    fifo_w256_128_r256_128 inFIFO (
        .rst(reset),                      // input wire rst
        .wr_clk(data_clk),              // input wire wr_clk connected to the data_clk for the ADC
        .rd_clk(rd_clk),                // input wire rd_clk
        .din(adc_fifo_data),                      // input wire [255 : 0] din
        .wr_en(wr_en),                  // input wire wr_en
        .rd_en(rd_en),                  // input wire rd_en
        .dout(fifo_out),                    // output wire [255 : 0] dout
        .full(full),                    // output wire full
        .wr_ack(wr_ack),                // output wire wr_ack
        .empty(empty),                  // output wire empty
        .valid(fifo_valid),                  // output wire valid
        .rd_data_count(rd_data_count),  // output wire [7 : 0] rd_data_count
        .wr_data_count(wr_data_count)  // output wire [7 : 0] wr_data_count
    );
endmodule
