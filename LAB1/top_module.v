module top_module ( CLOCK_50, KEY, SW, HEX0, LEDR);
    input         CLOCK_50;
    input  [3:0]  KEY;
    input  [17:0] SW;
    output [6:0]  HEX0;
	 output [17:0] LEDR;
	 
	 wire clk_50m;
	 wire rst;
	 wire load_en;
	 wire [3:0] in;
	 wire [1:0] cnt;
	 wire [6:0] hex0;
	
	 assign clk_50m = CLOCK_50;
	 assign rst = KEY[0];
	 assign load_en = SW[6];
	 assign in = SW[3:0];
	 assign cnt = SW[5:4]; 
	 assign HEX0[6:0] = hex0;
 
    final u_final (
        .clk_50m (clk_50m),
        .rst     (rst),
        .load_en (load_en),
        .in      (in),
        .cnt     (cnt),
        .hex0    (hex0)
    );

endmodule