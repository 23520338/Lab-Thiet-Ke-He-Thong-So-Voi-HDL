module top_test (KEY, SW, LEDR);
    input  [1:0]  KEY;
    input  [6:0]  SW;
    output [3:0]  LEDR;
	 
    wire clk;
    wire rst;
    wire load_en;
    wire [3:0] in;
    wire [1:0] cnt;
    wire [3:0] out;
	
    assign clk = ~KEY[1];      // Đảo clock nếu cần
    assign rst = KEY[0];       // Thử đảo thành KEY[0] nếu không hoạt động
    assign load_en = SW[6];
    assign in = SW[3:0];
    assign cnt = SW[5:4]; 
    assign LEDR[3:0] = out;    // SỬA: Đúng chiều kết nối
 
    lab1 u1 (
        .clk(clk),
        .rst(rst),
        .load_en(load_en),
        .in(in),
        .cnt(cnt),
        .out(out)
    );

endmodule
