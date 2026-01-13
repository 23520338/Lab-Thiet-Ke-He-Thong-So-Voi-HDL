module final_test (clk_50m, rst, load_en, in, cnt, hex0);
    input        clk_50m;
    input        rst;
    input        load_en;
    input  [3:0] in;
    input  [1:0] cnt;
    output [6:0] hex0;

    // FSM
    lab1 u_lab1 (
        .in      (in),
        .cnt     (cnt),
        .load_en (load_en),
        .clk     (clk_50m),
        .rst     (rst),
        .out     (out)
    );

    // 7-seg
    seg7_decoder u_hex (
        .bin (out),
        .seg (hex0)
    );
endmodule