`timescale 1ns /1ns
`include "ver1.v"

module ver1_tb;

reg [254:0] in;
wire [7:0] out;

ver1 uut(in,out);

 initial begin
    $dumpfile("ver1_tb.vcd");
    $dumpvars(0,ver1_tb);
    in = {{253{1'b1}}};
    #20
    in = {{245{1'b1}},{8{1'b0}}};
    #20
    in ={{231{1'b1}},{22{1'b0}}};
    #20
        $display("Test Completed");

 end

endmodule
