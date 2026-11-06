module mux(
    input [3:0] A,
    input [3:0] B,
    input [3:0] C,
    input [3:0] D,
    input [1:0] Switch,
    input Enable,
    output [3:0] Out
);

    assign is_A = ~Switch[1] && ~Switch[0];
    assign is_B = ~Switch[1] && Switch[0];
    assign is_C = Switch[1] && ~Switch[0];
    assign is_D = Switch[1] && Switch[0];

    assign Out = (is_A && Enable) ? A :
                 (is_B && Enable) ? B :
                 (is_C && Enable) ? C :
                 (is_D && Enable) ? D : 0;

endmodule