`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Purdue University NanoNeuroTech Lab
// Engineer: Om Kolhe
// 
// Create Date: 05/06/2022 03:52:11 PM
// Design Name: ADC Controller
// Module Name: ADC_SPI_Control
// Project Name: Testing bed for NxP 
// Target Devices: XEM7301-A200 Board
// Tool Versions: 
// Description: ADC used: AD7684 16-Bit, 100 kSPS PulSAR, Differential ADC from Analog Devices
//              The controller FSM from generating SPI control signal as well as acquring the data from 16 ADCs simultaneously.
//              The sampling_start signal will control when the acquistion is ON 
//              The channel_sel is the signal which tells which ADC is being used. The controller will insert 16h'0000 in sample_data if a channel is OFF
//              The valid signal goes high for one clock cycle after aquisition is completed
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ADC_SPI_Control #(
        parameter N_CYCLES_WAIT_ADC = 5,
        parameter ADC_RESOLUTION = 16
    )
    (
        input wire clk,                     // The input data clock from the frqeuency generator (data_clk_freq = 2 MHz , division by 100)
        input wire reset,
        input wire sampling_en,          // The sampling enable singal from the 
        input wire [15:0] DOUT,
        input wire [15:0] channel_sel,
        input wire [31:0] freq,
        output reg [255:0] sample_data,
        output reg valid,
        output reg CS
    );

    integer state;
    localparam sIDLE = 0, sSTART = 10, sACQUIRE1 = 11, sACQUIRE2 = 12,sACQUIRE3 = 13,sACQUIRE4 = 14,sACQUIRE5 = 15,sACQUIRE6 = 16,
                sACQUIRE7 = 17,sACQUIRE8 = 18,sACQUIRE9 = 19,sACQUIRE10 = 20,sACQUIRE11 = 21,sACQUIRE12 = 22,sACQUIRE13 = 23,
                sACQUIRE14 = 24,sACQUIRE15 = 25,sACQUIRE16 = 26,
                sFINISH = 30;

    reg [7:0] count;
    reg [3:0] bit_count;
    reg [31:0] freq_count;
    reg sample; 

    // Generating the sample signal for starting one sampling cycle (controls the sampling frequency)
    always @(posedge clk) begin 
        if(reset || !(sampling_en)) begin
            freq_count <= 32'd0;
            sample <= 0;
        end else begin
            if (freq_count < freq) begin
                freq_count <= freq_count + 1;
            end else begin
                freq_count <= 32'd0;
            end 
            
            if(freq_count == 1) begin
                sample <= (!sample) & sampling_en;
            end
            
            if(freq_count == 0) begin
                sample <= (!sample) & sampling_en;
                valid <= 0;
            end    
        end 
    end

    always @(posedge clk) begin
        if(reset)  begin 
            state <= sIDLE;
            valid <= 0;
            sample_data <= 256'd0;
            CS <= 1'b1;
            count <= 8'b0;
            bit_count <= 0;
        end else begin 
            case(state) 
                sIDLE: begin 
                    if(sample) begin
                        state <= sSTART;
                        CS <= 1'b0;
                        valid <= 1'b0;
                        count <= 8'b0;
                    end else begin 
                        CS <= 1'b1;
                        valid <= 1'b0;
                        state <= sIDLE;
                        count <= 8'b0;
                        bit_count <= 0;
                    end 
                end 
                
                sSTART: begin 
                    if(count == N_CYCLES_WAIT_ADC-1) begin 
                        state <= sACQUIRE1;
                        count <= 0;
                        bit_count <= 0;
                    end else begin 
                        count <= count + 1;
                    end 
                end 

                sACQUIRE1: begin
                    state <= sACQUIRE2;
                    bit_count <= bit_count + 1;
                    sample_data[bit_count] <= DOUT[0];
                    sample_data[bit_count+16] <= DOUT[1];
                    sample_data[bit_count+32] <= DOUT[2];
                    sample_data[bit_count+48] <= DOUT[3];
                    sample_data[bit_count+64] <= DOUT[4];
                    sample_data[bit_count+80] <= DOUT[5];
                    sample_data[bit_count+96] <= DOUT[6];
                    sample_data[bit_count+112] <= DOUT[7];
                    sample_data[bit_count+128] <= DOUT[8];
                    sample_data[bit_count+144] <= DOUT[9];
                    sample_data[bit_count+160] <= DOUT[10];
                    sample_data[bit_count+176] <= DOUT[11];
                    sample_data[bit_count+192] <= DOUT[12];
                    sample_data[bit_count+208] <= DOUT[13];
                    sample_data[bit_count+224] <= DOUT[14];
                    sample_data[bit_count+240] <= DOUT[15];   
                end 

                sACQUIRE2: begin
                    state <= sACQUIRE3;
                    bit_count <= bit_count + 1;
                    sample_data[bit_count] <= DOUT[0];
                    sample_data[bit_count+16] <= DOUT[1];
                    sample_data[bit_count+32] <= DOUT[2];
                    sample_data[bit_count+48] <= DOUT[3];
                    sample_data[bit_count+64] <= DOUT[4];
                    sample_data[bit_count+80] <= DOUT[5];
                    sample_data[bit_count+96] <= DOUT[6];
                    sample_data[bit_count+112] <= DOUT[7];
                    sample_data[bit_count+128] <= DOUT[8];
                    sample_data[bit_count+144] <= DOUT[9];
                    sample_data[bit_count+160] <= DOUT[10];
                    sample_data[bit_count+176] <= DOUT[11];
                    sample_data[bit_count+192] <= DOUT[12];
                    sample_data[bit_count+208] <= DOUT[13];
                    sample_data[bit_count+224] <= DOUT[14];
                    sample_data[bit_count+240] <= DOUT[15];   
                end

                sACQUIRE3: begin
                    state <= sACQUIRE4;
                    bit_count <= bit_count + 1;
                    sample_data[bit_count] <= DOUT[0];
                    sample_data[bit_count+16] <= DOUT[1];
                    sample_data[bit_count+32] <= DOUT[2];
                    sample_data[bit_count+48] <= DOUT[3];
                    sample_data[bit_count+64] <= DOUT[4];
                    sample_data[bit_count+80] <= DOUT[5];
                    sample_data[bit_count+96] <= DOUT[6];
                    sample_data[bit_count+112] <= DOUT[7];
                    sample_data[bit_count+128] <= DOUT[8];
                    sample_data[bit_count+144] <= DOUT[9];
                    sample_data[bit_count+160] <= DOUT[10];
                    sample_data[bit_count+176] <= DOUT[11];
                    sample_data[bit_count+192] <= DOUT[12];
                    sample_data[bit_count+208] <= DOUT[13];
                    sample_data[bit_count+224] <= DOUT[14];
                    sample_data[bit_count+240] <= DOUT[15];   
                end

                sACQUIRE4: begin
                    state <= sACQUIRE5;
                    bit_count <= bit_count + 1;
                    sample_data[bit_count] <= DOUT[0];
                    sample_data[bit_count+16] <= DOUT[1];
                    sample_data[bit_count+32] <= DOUT[2];
                    sample_data[bit_count+48] <= DOUT[3];
                    sample_data[bit_count+64] <= DOUT[4];
                    sample_data[bit_count+80] <= DOUT[5];
                    sample_data[bit_count+96] <= DOUT[6];
                    sample_data[bit_count+112] <= DOUT[7];
                    sample_data[bit_count+128] <= DOUT[8];
                    sample_data[bit_count+144] <= DOUT[9];
                    sample_data[bit_count+160] <= DOUT[10];
                    sample_data[bit_count+176] <= DOUT[11];
                    sample_data[bit_count+192] <= DOUT[12];
                    sample_data[bit_count+208] <= DOUT[13];
                    sample_data[bit_count+224] <= DOUT[14];
                    sample_data[bit_count+240] <= DOUT[15];   
                end

                sACQUIRE5: begin
                    state <= sACQUIRE6;
                    bit_count <= bit_count + 1;
                    sample_data[bit_count] <= DOUT[0];
                    sample_data[bit_count+16] <= DOUT[1];
                    sample_data[bit_count+32] <= DOUT[2];
                    sample_data[bit_count+48] <= DOUT[3];
                    sample_data[bit_count+64] <= DOUT[4];
                    sample_data[bit_count+80] <= DOUT[5];
                    sample_data[bit_count+96] <= DOUT[6];
                    sample_data[bit_count+112] <= DOUT[7];
                    sample_data[bit_count+128] <= DOUT[8];
                    sample_data[bit_count+144] <= DOUT[9];
                    sample_data[bit_count+160] <= DOUT[10];
                    sample_data[bit_count+176] <= DOUT[11];
                    sample_data[bit_count+192] <= DOUT[12];
                    sample_data[bit_count+208] <= DOUT[13];
                    sample_data[bit_count+224] <= DOUT[14];
                    sample_data[bit_count+240] <= DOUT[15];   
                end

                sACQUIRE6: begin
                    state <= sACQUIRE7;
                    bit_count <= bit_count + 1;
                    sample_data[bit_count] <= DOUT[0];
                    sample_data[bit_count+16] <= DOUT[1];
                    sample_data[bit_count+32] <= DOUT[2];
                    sample_data[bit_count+48] <= DOUT[3];
                    sample_data[bit_count+64] <= DOUT[4];
                    sample_data[bit_count+80] <= DOUT[5];
                    sample_data[bit_count+96] <= DOUT[6];
                    sample_data[bit_count+112] <= DOUT[7];
                    sample_data[bit_count+128] <= DOUT[8];
                    sample_data[bit_count+144] <= DOUT[9];
                    sample_data[bit_count+160] <= DOUT[10];
                    sample_data[bit_count+176] <= DOUT[11];
                    sample_data[bit_count+192] <= DOUT[12];
                    sample_data[bit_count+208] <= DOUT[13];
                    sample_data[bit_count+224] <= DOUT[14];
                    sample_data[bit_count+240] <= DOUT[15];   
                end


                sACQUIRE7: begin
                    state <= sACQUIRE8;
                    bit_count <= bit_count + 1;
                    sample_data[bit_count] <= DOUT[0];
                    sample_data[bit_count+16] <= DOUT[1];
                    sample_data[bit_count+32] <= DOUT[2];
                    sample_data[bit_count+48] <= DOUT[3];
                    sample_data[bit_count+64] <= DOUT[4];
                    sample_data[bit_count+80] <= DOUT[5];
                    sample_data[bit_count+96] <= DOUT[6];
                    sample_data[bit_count+112] <= DOUT[7];
                    sample_data[bit_count+128] <= DOUT[8];
                    sample_data[bit_count+144] <= DOUT[9];
                    sample_data[bit_count+160] <= DOUT[10];
                    sample_data[bit_count+176] <= DOUT[11];
                    sample_data[bit_count+192] <= DOUT[12];
                    sample_data[bit_count+208] <= DOUT[13];
                    sample_data[bit_count+224] <= DOUT[14];
                    sample_data[bit_count+240] <= DOUT[15];   
                end


                sACQUIRE8: begin
                    state <= sACQUIRE9;
                    bit_count <= bit_count + 1;
                    sample_data[bit_count] <= DOUT[0];
                    sample_data[bit_count+16] <= DOUT[1];
                    sample_data[bit_count+32] <= DOUT[2];
                    sample_data[bit_count+48] <= DOUT[3];
                    sample_data[bit_count+64] <= DOUT[4];
                    sample_data[bit_count+80] <= DOUT[5];
                    sample_data[bit_count+96] <= DOUT[6];
                    sample_data[bit_count+112] <= DOUT[7];
                    sample_data[bit_count+128] <= DOUT[8];
                    sample_data[bit_count+144] <= DOUT[9];
                    sample_data[bit_count+160] <= DOUT[10];
                    sample_data[bit_count+176] <= DOUT[11];
                    sample_data[bit_count+192] <= DOUT[12];
                    sample_data[bit_count+208] <= DOUT[13];
                    sample_data[bit_count+224] <= DOUT[14];
                    sample_data[bit_count+240] <= DOUT[15];   
                end

                sACQUIRE9: begin
                    state <= sACQUIRE10;
                    bit_count <= bit_count + 1;
                    sample_data[bit_count] <= DOUT[0];
                    sample_data[bit_count+16] <= DOUT[1];
                    sample_data[bit_count+32] <= DOUT[2];
                    sample_data[bit_count+48] <= DOUT[3];
                    sample_data[bit_count+64] <= DOUT[4];
                    sample_data[bit_count+80] <= DOUT[5];
                    sample_data[bit_count+96] <= DOUT[6];
                    sample_data[bit_count+112] <= DOUT[7];
                    sample_data[bit_count+128] <= DOUT[8];
                    sample_data[bit_count+144] <= DOUT[9];
                    sample_data[bit_count+160] <= DOUT[10];
                    sample_data[bit_count+176] <= DOUT[11];
                    sample_data[bit_count+192] <= DOUT[12];
                    sample_data[bit_count+208] <= DOUT[13];
                    sample_data[bit_count+224] <= DOUT[14];
                    sample_data[bit_count+240] <= DOUT[15];   
                end

                sACQUIRE10: begin
                    state <= sACQUIRE11;
                    bit_count <= bit_count + 1;
                    sample_data[bit_count] <= DOUT[0];
                    sample_data[bit_count+16] <= DOUT[1];
                    sample_data[bit_count+32] <= DOUT[2];
                    sample_data[bit_count+48] <= DOUT[3];
                    sample_data[bit_count+64] <= DOUT[4];
                    sample_data[bit_count+80] <= DOUT[5];
                    sample_data[bit_count+96] <= DOUT[6];
                    sample_data[bit_count+112] <= DOUT[7];
                    sample_data[bit_count+128] <= DOUT[8];
                    sample_data[bit_count+144] <= DOUT[9];
                    sample_data[bit_count+160] <= DOUT[10];
                    sample_data[bit_count+176] <= DOUT[11];
                    sample_data[bit_count+192] <= DOUT[12];
                    sample_data[bit_count+208] <= DOUT[13];
                    sample_data[bit_count+224] <= DOUT[14];
                    sample_data[bit_count+240] <= DOUT[15];   
                end
                
                sACQUIRE11: begin
                    state <= sACQUIRE12;
                    bit_count <= bit_count + 1;
                    sample_data[bit_count] <= DOUT[0];
                    sample_data[bit_count+16] <= DOUT[1];
                    sample_data[bit_count+32] <= DOUT[2];
                    sample_data[bit_count+48] <= DOUT[3];
                    sample_data[bit_count+64] <= DOUT[4];
                    sample_data[bit_count+80] <= DOUT[5];
                    sample_data[bit_count+96] <= DOUT[6];
                    sample_data[bit_count+112] <= DOUT[7];
                    sample_data[bit_count+128] <= DOUT[8];
                    sample_data[bit_count+144] <= DOUT[9];
                    sample_data[bit_count+160] <= DOUT[10];
                    sample_data[bit_count+176] <= DOUT[11];
                    sample_data[bit_count+192] <= DOUT[12];
                    sample_data[bit_count+208] <= DOUT[13];
                    sample_data[bit_count+224] <= DOUT[14];
                    sample_data[bit_count+240] <= DOUT[15];   
                end

                sACQUIRE12: begin
                    state <= sACQUIRE13;
                    bit_count <= bit_count + 1;
                    sample_data[bit_count] <= DOUT[0];
                    sample_data[bit_count+16] <= DOUT[1];
                    sample_data[bit_count+32] <= DOUT[2];
                    sample_data[bit_count+48] <= DOUT[3];
                    sample_data[bit_count+64] <= DOUT[4];
                    sample_data[bit_count+80] <= DOUT[5];
                    sample_data[bit_count+96] <= DOUT[6];
                    sample_data[bit_count+112] <= DOUT[7];
                    sample_data[bit_count+128] <= DOUT[8];
                    sample_data[bit_count+144] <= DOUT[9];
                    sample_data[bit_count+160] <= DOUT[10];
                    sample_data[bit_count+176] <= DOUT[11];
                    sample_data[bit_count+192] <= DOUT[12];
                    sample_data[bit_count+208] <= DOUT[13];
                    sample_data[bit_count+224] <= DOUT[14];
                    sample_data[bit_count+240] <= DOUT[15];   
                end

                sACQUIRE13: begin
                    state <= sACQUIRE14;
                    bit_count <= bit_count + 1;
                    sample_data[bit_count] <= DOUT[0];
                    sample_data[bit_count+16] <= DOUT[1];
                    sample_data[bit_count+32] <= DOUT[2];
                    sample_data[bit_count+48] <= DOUT[3];
                    sample_data[bit_count+64] <= DOUT[4];
                    sample_data[bit_count+80] <= DOUT[5];
                    sample_data[bit_count+96] <= DOUT[6];
                    sample_data[bit_count+112] <= DOUT[7];
                    sample_data[bit_count+128] <= DOUT[8];
                    sample_data[bit_count+144] <= DOUT[9];
                    sample_data[bit_count+160] <= DOUT[10];
                    sample_data[bit_count+176] <= DOUT[11];
                    sample_data[bit_count+192] <= DOUT[12];
                    sample_data[bit_count+208] <= DOUT[13];
                    sample_data[bit_count+224] <= DOUT[14];
                    sample_data[bit_count+240] <= DOUT[15];   
                end

                sACQUIRE14: begin
                    state <= sACQUIRE15;
                    bit_count <= bit_count + 1;
                    sample_data[bit_count] <= DOUT[0];
                    sample_data[bit_count+16] <= DOUT[1];
                    sample_data[bit_count+32] <= DOUT[2];
                    sample_data[bit_count+48] <= DOUT[3];
                    sample_data[bit_count+64] <= DOUT[4];
                    sample_data[bit_count+80] <= DOUT[5];
                    sample_data[bit_count+96] <= DOUT[6];
                    sample_data[bit_count+112] <= DOUT[7];
                    sample_data[bit_count+128] <= DOUT[8];
                    sample_data[bit_count+144] <= DOUT[9];
                    sample_data[bit_count+160] <= DOUT[10];
                    sample_data[bit_count+176] <= DOUT[11];
                    sample_data[bit_count+192] <= DOUT[12];
                    sample_data[bit_count+208] <= DOUT[13];
                    sample_data[bit_count+224] <= DOUT[14];
                    sample_data[bit_count+240] <= DOUT[15];   
                end

                sACQUIRE15: begin
                    state <= sACQUIRE16;
                    bit_count <= bit_count + 1;
                    sample_data[bit_count] <= DOUT[0];
                    sample_data[bit_count+16] <= DOUT[1];
                    sample_data[bit_count+32] <= DOUT[2];
                    sample_data[bit_count+48] <= DOUT[3];
                    sample_data[bit_count+64] <= DOUT[4];
                    sample_data[bit_count+80] <= DOUT[5];
                    sample_data[bit_count+96] <= DOUT[6];
                    sample_data[bit_count+112] <= DOUT[7];
                    sample_data[bit_count+128] <= DOUT[8];
                    sample_data[bit_count+144] <= DOUT[9];
                    sample_data[bit_count+160] <= DOUT[10];
                    sample_data[bit_count+176] <= DOUT[11];
                    sample_data[bit_count+192] <= DOUT[12];
                    sample_data[bit_count+208] <= DOUT[13];
                    sample_data[bit_count+224] <= DOUT[14];
                    sample_data[bit_count+240] <= DOUT[15];   
                end

                sACQUIRE16: begin
                    state <= sFINISH;
                    bit_count <= 0;
                    sample_data[bit_count] <= DOUT[0];
                    sample_data[bit_count+16] <= DOUT[1];
                    sample_data[bit_count+32] <= DOUT[2];
                    sample_data[bit_count+48] <= DOUT[3];
                    sample_data[bit_count+64] <= DOUT[4];
                    sample_data[bit_count+80] <= DOUT[5];
                    sample_data[bit_count+96] <= DOUT[6];
                    sample_data[bit_count+112] <= DOUT[7];
                    sample_data[bit_count+128] <= DOUT[8];
                    sample_data[bit_count+144] <= DOUT[9];
                    sample_data[bit_count+160] <= DOUT[10];
                    sample_data[bit_count+176] <= DOUT[11];
                    sample_data[bit_count+192] <= DOUT[12];
                    sample_data[bit_count+208] <= DOUT[13];
                    sample_data[bit_count+224] <= DOUT[14];
                    sample_data[bit_count+240] <= DOUT[15];   
                end

                sFINISH: begin
                    state <= sIDLE;
                    valid <= 1;
                    CS <= 1;
                end
            endcase 
        end
    end 
endmodule
