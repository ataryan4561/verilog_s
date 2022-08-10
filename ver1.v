module ver1(in,out);
input [254:0] in;
output [7:0] out;
 
integer i;
wire [7:0] counter;
always @ (in) begin
    counter=0;
    for(i=0; i<255; i=i+1)
    begin
        if(in[i]==1'b1)
            counter=counter+1'b1;
    end
    out =counter;
end

endmodule

