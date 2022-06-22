`timescale 1ns / 1ps

module saw_generator(
    input wire clk,                 // The clock signal for dout transfer 
    input wire reset,               // reset (active high) for reset the dout to and count to 0
    input wire [15:0] threshold,    // The value after which the sawtooth waveform will change the clk
    input wire [15:0] increment,    // The increment value, this deciedes the slope of the sawtooth waveform 
    input wire sample,              // The signal that will start the data point generation 
    output reg dout                 // The output. The value of the sample will be a 16 bit serial datapoint
    );

reg [15:0] thres;
reg [15:0] incre;    
reg [15:0] count;                   
reg slope;                          // slope = 1 is postive slope, slope = 0 is negative slope                          

always @(posedge clk) thres <= threshold;
always @(posedge clk) incre <= increment;

initial dout = 0;

// Initializing the finite state machine 
// The idle state will wait for the sample signal to go high 
// The other states are when the serial data is pushed to dout  
integer state = 0;
localparam s_idle = 0,
            s_1=1, s_2=2, s_3=3, s_4=4, s_5=5, s_6=6, s_7=7, s_8=8,
            s_9=9, s_10=10, s_11=11, s_12=12, s_13=13, s_14=14, s_15=15;
            
always @(posedge clk) begin 
    if (reset) begin 
        state <= s_idle;
        count <= 16'd0;
        slope <= 0;
        dout = 0;
    end else begin
        case(state)
            s_idle: begin 
                if(sample) begin
                    state <= s_1;
                    dout <= count[0];
                    // Change the slope when the count reaches threshold or 0  
                    if (count == threshold || count == 16'd0) begin
                        slope <= !slope;
                    end                      
                end
            end 
            s_1:begin
                state <= s_2;
                dout <= count[1];
            end
            s_2:begin
                state <= s_3;
                dout <= count[2];
            end 
            s_3:begin
                state <= s_4;
                dout <= count[3];
            end 
            s_4:begin
                state <= s_5;
                dout <= count[4];
            end 
            s_5:begin
                state <= s_6;
                dout <= count[5];
            end 
            s_6:begin
                state <= s_7;
                dout <= count[6];
            end 
            s_7:begin
                state <= s_8;
                dout <= count[7];
            end 
            s_8:begin
                state <= s_9;
                dout <= count[8];
            end 
            s_9:begin
                state <= s_10;
                dout <= count[9];
            end 
            s_10:begin
                state <= s_11;
                dout <= count[10];
            end 
            s_11:begin
                state <= s_12;
                dout <= count[11];
            end 
            s_12:begin
                state <= s_13;
                dout <= count[12];
            end 
            s_13:begin
                state <= s_14;
                dout <= count[13];
            end 
            s_14:begin
                state <= s_15;
                dout <= count[14];
            end 
            s_15:begin
                state <= s_idle;
                dout <= count[15];
                // update the count register
                if(slope) begin
                    count <= count + increment;
                end else begin
                    count <= count - increment; 
                end 
            end 
        endcase     
    end 
end


endmodule
