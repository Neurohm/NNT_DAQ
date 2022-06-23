//------------------------------------------------------------------------
// Modified ramtest.v
//
// This sample uses the Xilinx MIG DDR3 controller and HDL to move data
// from the PC to the DDR3 and vice-versa. Based on MIG generated example_top.v.
//
// Host Interface registers:
// WireIn 0x00
//     0 - DDR3 read enable (0=disabled, 1=enabled)
//     1 - DDR3 write enable (0=disabled, 1=enabled)
//     2 - Reset
//
// PipeIn 0x80 - DDR3 write port (U11, DDR2)
// PipeOut 0xA0 - DDR3 read port (U11, DDR2)
//
// This sample is included for reference only.  No guarantees, either
// expressed or implied, are to be drawn.
//------------------------------------------------------------------------
// tabstop 3
// Copyright (c) 2005-2016 Opal Kelly Incorporated
// $Rev$ $Date$
//------------------------------------------------------------------------
`timescale 1ns/1ps

module dummy_adc_stream (

	// Frontpanel connections to Host 

	input  wire [4:0]   okUH,
	output wire [2:0]   okHU,
	inout  wire [31:0]  okUHU,
	inout  wire         okAA,

	// input clock

	input  wire         sys_clk_p,
	input  wire         sys_clk_n,
	
	output wire [7:0]   led,
	
	// DDR# RAM connections

	inout  wire [31:0]  ddr3_dq,
	output wire [14:0]  ddr3_addr,
	output wire [2 :0]  ddr3_ba,
	output wire [0 :0]  ddr3_ck_p,
	output wire [0 :0]  ddr3_ck_n,
	output wire [0 :0]  ddr3_cke,
	output wire         ddr3_cas_n,
	output wire         ddr3_ras_n,
	output wire         ddr3_we_n,
	output wire [0 :0]  ddr3_odt,
	output wire [3 :0]  ddr3_dm,
	inout  wire [3 :0]  ddr3_dqs_p,
	inout  wire [3 :0]  ddr3_dqs_n,
	output wire         ddr3_reset_n,

	output wire pipe_out_write,
	// Connections to ADCs

	// output wire CS,
	output wire DCLOCK,
	// input wire [15:0] DOUT
	//output wire clk_gen_out1,
	output wire sample_ADC,
	output wire data_adc_lastbit,
	output wire adc_data_valid

	);

// OK RAMTest Parameters
localparam BLOCK_SIZE = 128; // 512 bytes / 4 bytes per word, 
localparam FIFO_SIZE = 1023; // note that Xilinx does not allow use of the full 1024 words
localparam BUFFER_HEADROOM = 20; // headroom for the FIFO count to account for latency

// Capability bitfield, used to indicate features supported by this bitfile:
// [0] - Supports passing calibration status through FrontPanel
localparam CAPABILITY = 16'h0001;


wire          init_calib_complete;
reg           sys_rst;

wire [29 :0]  app_addr;
wire [2  :0]  app_cmd;
wire          app_en;
wire          app_rdy;
wire [255:0]  app_rd_data;
wire          app_rd_data_end;
wire          app_rd_data_valid;
wire [255:0]  app_wdf_data;
wire                       app_wdf_end;
wire [31 :0]  app_wdf_mask;
wire          app_wdf_rdy;
wire          app_wdf_wren;

wire          clk;
wire          rst;


wire 		  locked;

// Debugging signals


// Front Panel

// Target interface bus:
wire         okClk;
wire [112:0] okHE;
wire [64:0]  okEH;

wire [31:0]  ep00wire; // reset signals
wire [31:0]  ep01wire; // sampling_en
wire [31:0]  ep02wire; // channel_sel
wire [31:0]  ep03wire; // freq (sampling frequency)

// wires for dumy data genrator control
wire [31:0] ep04wire; // for sawtooth generator threshold 
wire [31:0] ep05wire; // for sawtooht generator increment 


wire         pipe_in_read;
wire [255:0] pipe_in_data;
wire [6:0]   pipe_in_rd_count;
wire [9:0]   pipe_in_wr_count;
wire         pipe_in_valid;
wire         pipe_in_full;
wire         pipe_in_empty;
reg          pipe_in_ready;

//wire         pipe_out_write;
wire [255:0] pipe_out_data;
wire [9:0]   pipe_out_rd_count;
wire [6:0]   pipe_out_wr_count;
wire         pipe_out_full;
wire         pipe_out_empty;
reg          pipe_out_ready;

// Pipe Fifos

wire         po0_ep_read;
wire [31:0]  po0_ep_datain;

// ADC 
wire 	     clk_gen_out1;
//wire  		 DCLOCK;
//wire 		 adc_con_clk;
//wire 		 adc_data_valid;
wire [255:0] adc_fifo_data ;

// Clock generator for ADC clocking. 
// The module generates 8 MHz clocking using clocking wizard 

data_clk_gen uclkgen(
	.clk_out1(clk_gen_out1),
	.reset(ep00wire[2]),
	.locked(locked),
	.clk_in1(clk)
);

// Clock divider for converting the ADC clock frequency from 8 MHz to 2 MHz

 freq_divider #(.DIVISOR(4))
    utt(.clock_in(clk_gen_out1),
        .clock_out(DCLOCK));

// ADC SPI Controller 

// ADC_SPI_Control #(
//         .N_CYCLES_WAIT_ADC (5),
//         .ADC_RESOLUTION (16)
//     )
//     spi_con_inst(
//         .clk (DCLOCK),
//         .reset(ep00wire[2]),
//         .sampling_en(ep01wire[0]),
//         .DOUT(DOUT),
//         .channel_sel(ep02wire[15:0]),
//         .freq(ep03wire),
//         .sample_data(adc_fifo_data),
//         .valid(adc_data_valid),
//         .CS(CS)
//     );

// Dummy ADC data generator

Dummy_ADC_16Ch udummy(
	.clk(DCLOCK),
	.reset(ep00wire[3]),
	.threshold(ep04wire[15:0]),
	.increment(ep05wire[15:0]),
	.freq(ep03wire),
	.data_out(adc_fifo_data),
	.valid(adc_data_valid),
	.sample(sample_ADC)
);

// Debugging signals from Dummy_ADC_16Ch 
assign data_adc_lastbit = adc_fifo_data[0];




//MIG Infrastructure Reset
reg [31:0] rst_cnt;
initial rst_cnt = 32'b0;
always @(posedge okClk) begin
	if(rst_cnt < 32'h0800_0000) begin
		rst_cnt <= rst_cnt + 1;
		sys_rst <= 1'b1;
	end
	else begin
		sys_rst <= 1'b0;
	end
end

// MIG User Interface instantiation
mig_7series_0 u_ddr3_256_32 (

    // Memory interface ports

    .ddr3_addr                      (ddr3_addr),  // output [14:0]		ddr3_addr
    .ddr3_ba                        (ddr3_ba),  // output [2:0]		ddr3_ba
    .ddr3_cas_n                     (ddr3_cas_n),  // output			ddr3_cas_n
    .ddr3_ck_n                      (ddr3_ck_n),  // output [0:0]		ddr3_ck_n
    .ddr3_ck_p                      (ddr3_ck_p),  // output [0:0]		ddr3_ck_p
    .ddr3_cke                       (ddr3_cke),  // output [0:0]		ddr3_cke
    .ddr3_ras_n                     (ddr3_ras_n),  // output			ddr3_ras_n
    .ddr3_reset_n                   (ddr3_reset_n),  // output			ddr3_reset_n
    .ddr3_we_n                      (ddr3_we_n),  // output			ddr3_we_n
    .ddr3_dq                        (ddr3_dq),  // inout [31:0]		ddr3_dq
    .ddr3_dqs_n                     (ddr3_dqs_n),  // inout [3:0]		ddr3_dqs_n
    .ddr3_dqs_p                     (ddr3_dqs_p),  // inout [3:0]		ddr3_dqs_p
    .init_calib_complete            (init_calib_complete),  // output			init_calib_complete

    .ddr3_dm                        (ddr3_dm),  // output [3:0]		ddr3_dm
    .ddr3_odt                       (ddr3_odt),  // output [0:0]		ddr3_odt

    // Application interface ports
    .app_addr                       (app_addr),  // input [28:0]		app_addr
    .app_cmd                        (app_cmd),  // input [2:0]		app_cmd
    .app_en                         (app_en),  // input				app_en
    .app_wdf_data                   (app_wdf_data),  // input [255:0]		app_wdf_data
    .app_wdf_end                    (app_wdf_end),  // input				app_wdf_end
    .app_wdf_wren                   (app_wdf_wren),  // input				app_wdf_wren
    .app_rd_data                    (app_rd_data),  // output [255:0]		app_rd_data
    .app_rd_data_end                (app_rd_data_end),  // output			app_rd_data_end
    .app_rd_data_valid              (app_rd_data_valid),  // output			app_rd_data_valid
    .app_rdy                        (app_rdy),  // output			app_rdy
    .app_wdf_rdy                    (app_wdf_rdy),  // output			app_wdf_rdy
    .app_sr_req                     (1'b0),  // input			app_sr_req
    .app_ref_req                    (1'b0),  // input			app_ref_req
    .app_zq_req                     (1'b0),  // input			app_zq_req
    .app_sr_active                  (),  // output			app_sr_active
    .app_ref_ack                    (),  // output			app_ref_ack
    .app_zq_ack                     (),  // output			app_zq_ack
    .ui_clk                         (clk),  // output			ui_cl
    .ui_clk_sync_rst                (rst),  // output			ui_clk_sync_rst
    .app_wdf_mask                   (app_wdf_mask),  // input [31:0]		app_wdf_mask

    // System Clock Ports
    .sys_clk_p                       (sys_clk_p),  // input				sys_clk_p
    .sys_clk_n                       (sys_clk_n),  // input				sys_clk_n
    .sys_rst                        (sys_rst) // input sys_rst

    );


// OK MIG DDR3 Testbench Instatiation
ddr3_FSM ddr3_tb (
	.clk                (clk),
	.reset              (ep00wire[3] | rst),
	.reads_en           (ep00wire[0]),
	.writes_en          (ep00wire[1]),
	.calib_done         (init_calib_complete),

	.ib_re              (pipe_in_read),
	.ib_data            (pipe_in_data),
	.ib_count           (pipe_in_rd_count),
	.ib_valid           (pipe_in_valid),
	.ib_empty           (pipe_in_empty),
	
	.ob_we              (pipe_out_write),
	.ob_data            (pipe_out_data),
	.ob_count           (pipe_out_wr_count),
	.ob_full            (pipe_out_full),
	
	.app_rdy            (app_rdy),
	.app_en             (app_en),
	.app_cmd            (app_cmd),
	.app_addr           (app_addr),
	
	.app_rd_data        (app_rd_data),
	.app_rd_data_end    (app_rd_data_end),
	.app_rd_data_valid  (app_rd_data_valid),
	
	.app_wdf_rdy        (app_wdf_rdy),
	.app_wdf_wren       (app_wdf_wren),
	.app_wdf_data       (app_wdf_data),
	.app_wdf_end        (app_wdf_end),
	.app_wdf_mask       (app_wdf_mask)
	);

//Block Throttle
always @(posedge okClk) begin
	// Check for enough space in input FIFO to pipe in another block
	// The count is compared against a reduced size to account for delays in
	// FIFO count updates.
	if(pipe_in_wr_count <= (FIFO_SIZE-BUFFER_HEADROOM-BLOCK_SIZE) ) begin
		pipe_in_ready <= 1'b1;
	end
	else begin
		pipe_in_ready <= 1'b0;
	end

	// Check for enough space in output FIFO to pipe out another block
	if(pipe_out_rd_count >= BLOCK_SIZE) begin
		pipe_out_ready <= 1'b1;
	end
	else begin
		pipe_out_ready <= 1'b0;
	end
end

// Instantiate the okHost and connect endpoints.
wire [65*3-1:0]  okEHx;

okHost okHI(
	.okUH(okUH),
	.okHU(okHU),
	.okUHU(okUHU),
	.okAA(okAA),
	.okClk(okClk),
	.okHE(okHE),
	.okEH(okEH)
	);

okWireOR # (.N(3)) wireOR (okEH, okEHx);
okWireIn       wi00 (.okHE(okHE),                             .ep_addr(8'h00), .ep_dataout(ep00wire));
okWireIn       wi01 (.okHE(okHE),                             .ep_addr(8'h01), .ep_dataout(ep01wire));
okWireIn       wi02 (.okHE(okHE),                             .ep_addr(8'h02), .ep_dataout(ep02wire));
okWireIn       wi03 (.okHE(okHE),                             .ep_addr(8'h03), .ep_dataout(ep03wire));
okWireIn       wi04 (.okHE(okHE),                             .ep_addr(8'h04), .ep_dataout(ep04wire));
okWireIn       wi05 (.okHE(okHE),                             .ep_addr(8'h05), .ep_dataout(ep05wire));
okWireOut      wo00 (.okHE(okHE), .okEH(okEHx[ 0*65 +: 65 ]), .ep_addr(8'h20), .ep_datain({30'h00,locked,init_calib_complete}));
okWireOut      wo01 (.okHE(okHE), .okEH(okEHx[ 1*65 +: 65 ]), .ep_addr(8'h3e), .ep_datain(CAPABILITY));
//okBTPipeIn     pi0  (.okHE(okHE), .okEH(okEHx[ 2*65 +: 65 ]), .ep_addr(8'h80), .ep_write(pi0_ep_write), .ep_blockstrobe(), .ep_dataout(pi0_ep_dataout), .ep_ready(pipe_in_ready));
okBTPipeOut    po0  (.okHE(okHE), .okEH(okEHx[ 2*65 +: 65 ]), .ep_addr(8'ha0), .ep_read(po0_ep_read),   .ep_blockstrobe(), .ep_datain(po0_ep_datain),   .ep_ready(pipe_out_ready));


// Input FIFO instantation 
fifo_w256_128_r256_128 inFIFO (
	.rst(ep00wire[3]),                      // input wire rst
	.wr_clk(DCLOCK),              // input wire wr_clk connected to the data_clk for the ADC
	.rd_clk(clk),                // input wire rd_clk
	.din(adc_fifo_data),                      // input wire [255 : 0] din
	.wr_en(adc_data_valid),                  // input wire wr_en
	.rd_en(pipe_in_read),                  // input wire rd_en
	.dout(pipe_in_data),                    // output wire [255 : 0] dout
	.full(pipe_in_full),                    // output wire full
	.empty(pipe_in_empty),                  // output wire empty
	.valid(pipe_in_valid),                  // output wire valid
	.rd_data_count(pipe_in_rd_count),  // output wire [7 : 0] rd_data_count
	.wr_data_count(pipe_in_wr_count)  // output wire [7 : 0] wr_data_count
);

fifo_w256_128_r32_1024 okPipeOut_fifo (
	.rst(ep00wire[3]),
	.wr_clk(clk),
	.rd_clk(okClk),
	.din(pipe_out_data), // Bus [256 : 0]
	.wr_en(pipe_out_write),
	.rd_en(po0_ep_read),
	.dout(po0_ep_datain), // Bus [31 : 0]
	.full(pipe_out_full),
	.empty(pipe_out_empty),
	.valid(),
	.rd_data_count(pipe_out_rd_count), // Bus [9 : 0]
	.wr_data_count(pipe_out_wr_count)); // Bus [6 : 0]


function [7:0] xem7310_led;
input [7:0] a;
integer i;
begin
	for(i=0; i<8; i=i+1) begin: u
		xem7310_led[i] = (a[i]==1'b1) ? (1'b0) : (1'bz);
	end
end
endfunction

assign led = xem7310_led({3'b111,ep00wire[0],ep00wire[1],app_wdf_rdy,init_calib_complete,locked});

endmodule
