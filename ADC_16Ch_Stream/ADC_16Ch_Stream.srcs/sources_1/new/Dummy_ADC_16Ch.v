`timescale 1ns / 1ps


module Dummy_ADC_16Ch(
    input wire clk,
    input wire reset,
    input wire [15:0] threshold,
    input wire [15:0] increment,
    input wire [31:0] freq,
    output reg [255:0] data_out,
    output reg valid,
    output reg sample
    );
    
//reg sample;
wire [15:0] adc_out;

reg [31:0] freq_count;

reg [3:0] count; 

// set intial values for registers 
initial begin
    valid = 1'b0;
    sample = 1'b0;
    freq_count = 32'd0;
    data_out = 256'd0;
    count = 4'd0;
end

// The idle state will wait for the sample signal to go high 
// The other states are when the serial data is aranged and pushed to data_out   
integer state = 0;
localparam s_idle = 0,
            s_1=1, s_2=2, s_3=3, s_4=4, s_5=5, s_6=6, s_7=7, s_8=8,
            s_9=9, s_10=10, s_11=11, s_12=12, s_13=13, s_14=14, s_15=15, s_16=16;


// For 20 kHz samplig frequency with clk at 100 MHz 
// freq = 32'd4999
// Generating the sample start signal for the ADC 
//always @(posedge clk) sample_start <= sample;

always @(posedge clk) begin 
    if(reset) begin
        freq_count <= 32'd0;
        sample <= 0;
    end else begin
        if (freq_count < freq) begin
            freq_count <= freq_count + 1;
        end else begin
            freq_count <= 32'd0;
        end 
        
        if(freq_count == 1) begin
            sample <= !sample;
        end
        
        if(freq_count == 0) begin
            sample <= !sample;
        end    
    end 
end 

// Initializing the finite state machine 
always @(posedge clk) begin 
    if(reset) begin 
        state <= s_idle;
        valid <= 0;
        data_out <= 256'd0;
        count <= 4'd0;
    end else begin 
        case(state)
            s_idle: begin
                valid <= 0;
                count <= 0;
                if(sample) begin 
                    state <= s_1;
                end         
            end 

            s_1: begin 
                state <= s_2;
                data_out[count] <= adc_out[0];
                data_out[count+16] <= adc_out[1];
                data_out[count+32] <= adc_out[2];
                data_out[count+48] <= adc_out[3];
                data_out[count+64] <= adc_out[4];
                data_out[count+80] <= adc_out[5];
                data_out[count+96] <= adc_out[6];
                data_out[count+112] <= adc_out[7];
                data_out[count+128] <= adc_out[8];
                data_out[count+144] <= adc_out[9];
                data_out[count+160] <= adc_out[10];
                data_out[count+176] <= adc_out[11];
                data_out[count+192] <= adc_out[12];
                data_out[count+208] <= adc_out[13];
                data_out[count+224] <= adc_out[14];
                data_out[count+240] <= adc_out[15];
                count <= count+1;
            end 

            s_2: begin 
                state <= s_3;
                data_out[count] <= adc_out[0];
                data_out[count+16] <= adc_out[1];
                data_out[count+32] <= adc_out[2];
                data_out[count+48] <= adc_out[3];
                data_out[count+64] <= adc_out[4];
                data_out[count+80] <= adc_out[5];
                data_out[count+96] <= adc_out[6];
                data_out[count+112] <= adc_out[7];
                data_out[count+128] <= adc_out[8];
                data_out[count+144] <= adc_out[9];
                data_out[count+160] <= adc_out[10];
                data_out[count+176] <= adc_out[11];
                data_out[count+192] <= adc_out[12];
                data_out[count+208] <= adc_out[13];
                data_out[count+224] <= adc_out[14];
                data_out[count+240] <= adc_out[15];
                count <= count+1;
            end 

            s_3: begin 
                state <= s_4;
                data_out[count] <= adc_out[0];
                data_out[count+16] <= adc_out[1];
                data_out[count+32] <= adc_out[2];
                data_out[count+48] <= adc_out[3];
                data_out[count+64] <= adc_out[4];
                data_out[count+80] <= adc_out[5];
                data_out[count+96] <= adc_out[6];
                data_out[count+112] <= adc_out[7];
                data_out[count+128] <= adc_out[8];
                data_out[count+144] <= adc_out[9];
                data_out[count+160] <= adc_out[10];
                data_out[count+176] <= adc_out[11];
                data_out[count+192] <= adc_out[12];
                data_out[count+208] <= adc_out[13];
                data_out[count+224] <= adc_out[14];
                data_out[count+240] <= adc_out[15];
                count <= count+1;
            end 

            s_4: begin 
                state <= s_5;
                data_out[count] <= adc_out[0];
                data_out[count+16] <= adc_out[1];
                data_out[count+32] <= adc_out[2];
                data_out[count+48] <= adc_out[3];
                data_out[count+64] <= adc_out[4];
                data_out[count+80] <= adc_out[5];
                data_out[count+96] <= adc_out[6];
                data_out[count+112] <= adc_out[7];
                data_out[count+128] <= adc_out[8];
                data_out[count+144] <= adc_out[9];
                data_out[count+160] <= adc_out[10];
                data_out[count+176] <= adc_out[11];
                data_out[count+192] <= adc_out[12];
                data_out[count+208] <= adc_out[13];
                data_out[count+224] <= adc_out[14];
                data_out[count+240] <= adc_out[15];
                count <= count+1;
            end 

            s_5: begin 
                state <= s_6;
                data_out[count] <= adc_out[0];
                data_out[count+16] <= adc_out[1];
                data_out[count+32] <= adc_out[2];
                data_out[count+48] <= adc_out[3];
                data_out[count+64] <= adc_out[4];
                data_out[count+80] <= adc_out[5];
                data_out[count+96] <= adc_out[6];
                data_out[count+112] <= adc_out[7];
                data_out[count+128] <= adc_out[8];
                data_out[count+144] <= adc_out[9];
                data_out[count+160] <= adc_out[10];
                data_out[count+176] <= adc_out[11];
                data_out[count+192] <= adc_out[12];
                data_out[count+208] <= adc_out[13];
                data_out[count+224] <= adc_out[14];
                data_out[count+240] <= adc_out[15];
                count <= count+1;
            end 

            s_6: begin 
                state <= s_7;
                data_out[count] <= adc_out[0];
                data_out[count+16] <= adc_out[1];
                data_out[count+32] <= adc_out[2];
                data_out[count+48] <= adc_out[3];
                data_out[count+64] <= adc_out[4];
                data_out[count+80] <= adc_out[5];
                data_out[count+96] <= adc_out[6];
                data_out[count+112] <= adc_out[7];
                data_out[count+128] <= adc_out[8];
                data_out[count+144] <= adc_out[9];
                data_out[count+160] <= adc_out[10];
                data_out[count+176] <= adc_out[11];
                data_out[count+192] <= adc_out[12];
                data_out[count+208] <= adc_out[13];
                data_out[count+224] <= adc_out[14];
                data_out[count+240] <= adc_out[15];
                count <= count+1;
            end 

            s_7: begin 
                state <= s_8;
                data_out[count] <= adc_out[0];
                data_out[count+16] <= adc_out[1];
                data_out[count+32] <= adc_out[2];
                data_out[count+48] <= adc_out[3];
                data_out[count+64] <= adc_out[4];
                data_out[count+80] <= adc_out[5];
                data_out[count+96] <= adc_out[6];
                data_out[count+112] <= adc_out[7];
                data_out[count+128] <= adc_out[8];
                data_out[count+144] <= adc_out[9];
                data_out[count+160] <= adc_out[10];
                data_out[count+176] <= adc_out[11];
                data_out[count+192] <= adc_out[12];
                data_out[count+208] <= adc_out[13];
                data_out[count+224] <= adc_out[14];
                data_out[count+240] <= adc_out[15];
                count <= count+1;
            end 

            s_8: begin 
                state <= s_9;
                data_out[count] <= adc_out[0];
                data_out[count+16] <= adc_out[1];
                data_out[count+32] <= adc_out[2];
                data_out[count+48] <= adc_out[3];
                data_out[count+64] <= adc_out[4];
                data_out[count+80] <= adc_out[5];
                data_out[count+96] <= adc_out[6];
                data_out[count+112] <= adc_out[7];
                data_out[count+128] <= adc_out[8];
                data_out[count+144] <= adc_out[9];
                data_out[count+160] <= adc_out[10];
                data_out[count+176] <= adc_out[11];
                data_out[count+192] <= adc_out[12];
                data_out[count+208] <= adc_out[13];
                data_out[count+224] <= adc_out[14];
                data_out[count+240] <= adc_out[15];
                count <= count+1;
            end 

            s_9: begin 
                state <= s_10;
                data_out[count] <= adc_out[0];
                data_out[count+16] <= adc_out[1];
                data_out[count+32] <= adc_out[2];
                data_out[count+48] <= adc_out[3];
                data_out[count+64] <= adc_out[4];
                data_out[count+80] <= adc_out[5];
                data_out[count+96] <= adc_out[6];
                data_out[count+112] <= adc_out[7];
                data_out[count+128] <= adc_out[8];
                data_out[count+144] <= adc_out[9];
                data_out[count+160] <= adc_out[10];
                data_out[count+176] <= adc_out[11];
                data_out[count+192] <= adc_out[12];
                data_out[count+208] <= adc_out[13];
                data_out[count+224] <= adc_out[14];
                data_out[count+240] <= adc_out[15];
                count <= count+1;
            end 

            s_10: begin 
                state <= s_11;
                data_out[count] <= adc_out[0];
                data_out[count+16] <= adc_out[1];
                data_out[count+32] <= adc_out[2];
                data_out[count+48] <= adc_out[3];
                data_out[count+64] <= adc_out[4];
                data_out[count+80] <= adc_out[5];
                data_out[count+96] <= adc_out[6];
                data_out[count+112] <= adc_out[7];
                data_out[count+128] <= adc_out[8];
                data_out[count+144] <= adc_out[9];
                data_out[count+160] <= adc_out[10];
                data_out[count+176] <= adc_out[11];
                data_out[count+192] <= adc_out[12];
                data_out[count+208] <= adc_out[13];
                data_out[count+224] <= adc_out[14];
                data_out[count+240] <= adc_out[15];
                count <= count+1;
            end 

            s_11: begin 
                state <= s_12;
                data_out[count] <= adc_out[0];
                data_out[count+16] <= adc_out[1];
                data_out[count+32] <= adc_out[2];
                data_out[count+48] <= adc_out[3];
                data_out[count+64] <= adc_out[4];
                data_out[count+80] <= adc_out[5];
                data_out[count+96] <= adc_out[6];
                data_out[count+112] <= adc_out[7];
                data_out[count+128] <= adc_out[8];
                data_out[count+144] <= adc_out[9];
                data_out[count+160] <= adc_out[10];
                data_out[count+176] <= adc_out[11];
                data_out[count+192] <= adc_out[12];
                data_out[count+208] <= adc_out[13];
                data_out[count+224] <= adc_out[14];
                data_out[count+240] <= adc_out[15];
                count <= count+1;
            end 

            s_12: begin 
                state <= s_13;
                data_out[count] <= adc_out[0];
                data_out[count+16] <= adc_out[1];
                data_out[count+32] <= adc_out[2];
                data_out[count+48] <= adc_out[3];
                data_out[count+64] <= adc_out[4];
                data_out[count+80] <= adc_out[5];
                data_out[count+96] <= adc_out[6];
                data_out[count+112] <= adc_out[7];
                data_out[count+128] <= adc_out[8];
                data_out[count+144] <= adc_out[9];
                data_out[count+160] <= adc_out[10];
                data_out[count+176] <= adc_out[11];
                data_out[count+192] <= adc_out[12];
                data_out[count+208] <= adc_out[13];
                data_out[count+224] <= adc_out[14];
                data_out[count+240] <= adc_out[15];
                count <= count+1;
            end 

            s_13: begin 
                state <= s_14;
                data_out[count] <= adc_out[0];
                data_out[count+16] <= adc_out[1];
                data_out[count+32] <= adc_out[2];
                data_out[count+48] <= adc_out[3];
                data_out[count+64] <= adc_out[4];
                data_out[count+80] <= adc_out[5];
                data_out[count+96] <= adc_out[6];
                data_out[count+112] <= adc_out[7];
                data_out[count+128] <= adc_out[8];
                data_out[count+144] <= adc_out[9];
                data_out[count+160] <= adc_out[10];
                data_out[count+176] <= adc_out[11];
                data_out[count+192] <= adc_out[12];
                data_out[count+208] <= adc_out[13];
                data_out[count+224] <= adc_out[14];
                data_out[count+240] <= adc_out[15];
                count <= count+1;
            end 

            s_14: begin 
                state <= s_15;
                data_out[count] <= adc_out[0];
                data_out[count+16] <= adc_out[1];
                data_out[count+32] <= adc_out[2];
                data_out[count+48] <= adc_out[3];
                data_out[count+64] <= adc_out[4];
                data_out[count+80] <= adc_out[5];
                data_out[count+96] <= adc_out[6];
                data_out[count+112] <= adc_out[7];
                data_out[count+128] <= adc_out[8];
                data_out[count+144] <= adc_out[9];
                data_out[count+160] <= adc_out[10];
                data_out[count+176] <= adc_out[11];
                data_out[count+192] <= adc_out[12];
                data_out[count+208] <= adc_out[13];
                data_out[count+224] <= adc_out[14];
                data_out[count+240] <= adc_out[15];
                count <= count+1;
            end 

            s_15: begin 
                state <= s_16;
                data_out[count] <= adc_out[0];
                data_out[count+16] <= adc_out[1];
                data_out[count+32] <= adc_out[2];
                data_out[count+48] <= adc_out[3];
                data_out[count+64] <= adc_out[4];
                data_out[count+80] <= adc_out[5];
                data_out[count+96] <= adc_out[6];
                data_out[count+112] <= adc_out[7];
                data_out[count+128] <= adc_out[8];
                data_out[count+144] <= adc_out[9];
                data_out[count+160] <= adc_out[10];
                data_out[count+176] <= adc_out[11];
                data_out[count+192] <= adc_out[12];
                data_out[count+208] <= adc_out[13];
                data_out[count+224] <= adc_out[14];
                data_out[count+240] <= adc_out[15];
                count <= count+1;
            end 

            s_16: begin 
                state <= s_idle;
                data_out[count] <= adc_out[0];
                data_out[count+16] <= adc_out[1];
                data_out[count+32] <= adc_out[2];
                data_out[count+48] <= adc_out[3];
                data_out[count+64] <= adc_out[4];
                data_out[count+80] <= adc_out[5];
                data_out[count+96] <= adc_out[6];
                data_out[count+112] <= adc_out[7];
                data_out[count+128] <= adc_out[8];
                data_out[count+144] <= adc_out[9];
                data_out[count+160] <= adc_out[10];
                data_out[count+176] <= adc_out[11];
                data_out[count+192] <= adc_out[12];
                data_out[count+208] <= adc_out[13];
                data_out[count+224] <= adc_out[14];
                data_out[count+240] <= adc_out[15];
                valid <= 1;
            end  
        endcase
    end
end           

saw_generator ADCinst0(
    .clk(clk),
    .reset(reset),
    .threshold(threshold),
    .increment(increment),
    .sample(sample),
    .dout(adc_out[0])
    );

saw_generator ADCinst1(
    .clk(clk),
    .reset(reset),
    .threshold(threshold),
    .increment(increment),
    .sample(sample),
    .dout(adc_out[1])
    );

saw_generator ADCinst2(
    .clk(clk),
    .reset(reset),
    .threshold(threshold),
    .increment(increment),
    .sample(sample),
    .dout(adc_out[2])
    );

saw_generator ADCinst3(
    .clk(clk),
    .reset(reset),
    .threshold(threshold),
    .increment(increment),
    .sample(sample),
    .dout(adc_out[3])
    );

saw_generator ADCinst4(
    .clk(clk),
    .reset(reset),
    .threshold(threshold),
    .increment(increment),
    .sample(sample),
    .dout(adc_out[4])
    );

saw_generator ADCinst5(
    .clk(clk),
    .reset(reset),
    .threshold(threshold),
    .increment(increment),
    .sample(sample),
    .dout(adc_out[5])
    );

saw_generator ADCinst6(
    .clk(clk),
    .reset(reset),
    .threshold(threshold),
    .increment(increment),
    .sample(sample),
    .dout(adc_out[6])
    );

saw_generator ADCinst7(
    .clk(clk),
    .reset(reset),
    .threshold(threshold),
    .increment(increment),
    .sample(sample),
    .dout(adc_out[7])
    );

saw_generator ADCinst8(
    .clk(clk),
    .reset(reset),
    .threshold(threshold),
    .increment(increment),
    .sample(sample),
    .dout(adc_out[8])
    );

saw_generator ADCinst9(
    .clk(clk),
    .reset(reset),
    .threshold(threshold),
    .increment(increment),
    .sample(sample),
    .dout(adc_out[9])
    );

saw_generator ADCinst10(
    .clk(clk),
    .reset(reset),
    .threshold(threshold),
    .increment(increment),
    .sample(sample),
    .dout(adc_out[10])
    );

saw_generator ADCinst11(
    .clk(clk),
    .reset(reset),
    .threshold(threshold),
    .increment(increment),
    .sample(sample),
    .dout(adc_out[11])
    );

saw_generator ADCinst12(
    .clk(clk),
    .reset(reset),
    .threshold(threshold),
    .increment(increment),
    .sample(sample),
    .dout(adc_out[12])
    );

saw_generator ADCinst13(
    .clk(clk),
    .reset(reset),
    .threshold(threshold),
    .increment(increment),
    .sample(sample),
    .dout(adc_out[13])
    );

saw_generator ADCinst14(
    .clk(clk),
    .reset(reset),
    .threshold(threshold),
    .increment(increment),
    .sample(sample),
    .dout(adc_out[14])
    );

saw_generator ADCinst15(
    .clk(clk),
    .reset(reset),
    .threshold(threshold),
    .increment(increment),
    .sample(sample),
    .dout(adc_out[15])
    );



    
endmodule
