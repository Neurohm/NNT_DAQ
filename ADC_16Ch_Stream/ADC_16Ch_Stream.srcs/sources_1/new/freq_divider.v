// Frequency divider for clocking signals 
// F(clock_out) = F(clock_in)/DIVISOR

module freq_divider #(
    parameter DIVISOR = 32'd2
) (
    input wire clock_in,
    output reg clock_out
);
    
    reg[31:0] counter = 32'd0;

    always @(posedge clock_in)
    begin
        counter <= counter + 32'd1;
        if(counter >= DIVISOR -1) begin
            counter <= 32'd0;
        end 
        clock_out <= (counter<DIVISOR/2) ?1'b1:1'b0;
    end  
endmodule