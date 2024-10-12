`default_nettype none
module top_module(
    input a, 
    input b, 
    input c, 
    input d, 
    output out, 
    output out_n
);

    wire and1_out, and2_out, or_out;

    assign and1_out = a & b;    // 첫 번째 AND 게이트
    assign and2_out = c & d;    // 두 번째 AND 게이트
    assign or_out = and1_out | and2_out;  // OR 게이트
    assign out = or_out;        // OR 게이트의 출력을 out으로 연결
    assign out_n = ~or_out;     // OR 게이트의 출력을 반전하여 out_n으로 연결

endmodule