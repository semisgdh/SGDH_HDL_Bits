module top_module( input a, input b, output out );
    assign out = ~(a ^ b);
    //assign out = a ~^ b; // same results
endmodule