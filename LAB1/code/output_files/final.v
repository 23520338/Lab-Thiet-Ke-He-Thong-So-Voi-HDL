module final (clk_50m, rst, load_en, in, cnt, hex0);
    input        clk_50m;
    input        rst;
    input        load_en;
    input  [3:0] in;
    input  [1:0] cnt;
    output [6:0] hex0;

    wire clk_1hz;
    wire [3:0] out;

    // Clock divider
    clk_div_1hz u_clk (
        .clk_50m (clk_50m),
        .rst_n   (rst),
        .clk_1hz (clk_1hz)
    );

    // FSM
    lab1 u_lab1 (
        .in      (in),
        .cnt     (cnt),
        .load_en (load_en),
        .clk     (clk_1hz),
        .rst     (rst),
        .out     (out)
    );

    // 7-seg
    seg7_decoder u_hex (
        .bin (out),
        .seg (hex0)
    );
endmodule