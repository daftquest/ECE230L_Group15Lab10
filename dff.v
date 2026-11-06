module dff(
    input D, clk,
    output reg Q,
    output NotQ
);

initial begin
    Q <= 'b0;
end

always @(posedge clk)
    Q <= D;
    assign NotQ = ~Q;
endmodule