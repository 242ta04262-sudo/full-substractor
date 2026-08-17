module full_subtractor (
    input  wire A,
    input  wire B,
    input  wire Bin,
    output wire Difference,
    output wire Bout
);

assign Difference = A ^ B ^ Bin;
assign Bout = (~A & B) | (~A & Bin) | (B & Bin);

endmodule