module lab1 (in, cnt, load_en, clk, rst, out);
input      [3:0] in;
input 	  [1:0] cnt;
input            load_en, clk, rst;
output reg [3:0] out;

reg	 [2:0] state, n_state;

parameter state0 = 3'b000;
parameter state1 = 3'b001;
parameter state2 = 3'b010;
parameter state3 = 3'b011;
parameter state4 = 3'b100;
parameter state5 = 3'b101;
parameter state6 = 3'b110;
parameter state7 = 3'b111;

parameter mssv0  = 4'b0010;		// 2
parameter mssv1  = 4'b0011;		// 3
parameter mssv2  = 4'b0101;		// 5
parameter mssv3  = 4'b0010; 	   // 2
parameter mssv4  = 4'b0000; 	   // 0
parameter mssv5  = 4'b0011;		// 3
parameter mssv6  = 4'b0011;		// 3
parameter mssv7  = 4'b1000; 	   // 8

always @(posedge clk or negedge rst) begin
	if (!rst) 
		state <= state0;
	else 
		state <= n_state;
end
		
always @(*) begin
	if (load_en)
		case (in)
			4'd2: begin
				if (cnt == 2'd0)	
					n_state = state0;
				else 	
					n_state = state3;
			end
			4'd3: begin
				if (cnt == 2'd0)
					n_state = state1;
				else if (cnt == 2'd1)
					n_state = state5;
				else
					n_state = state6;
			end
			4'd5:  n_state = state2;
			4'd0:  n_state = state4;
			4'd8:  n_state = state7;
			default: n_state = state0;
		endcase
	else
		case (state)
			state0:  n_state = state6;
			state1:  n_state = state6;
			state2:  n_state = state7;
			state3:  n_state = state0;
			state4:  n_state = state7;
			state5:  n_state = state2;
			state6:  n_state = state4;
			state7:  n_state = state3;
			default: n_state = state0;
		endcase
end

always @(*) begin
	case(state)
		state0:  out = 4'd2;
      state1:  out = 4'd3;
      state2:  out = 4'd5;
      state3:  out = 4'd2;
      state4:  out = 4'd0;
      state5:  out = 4'd3;
      state6:  out = 4'd3;
      state7:  out = 4'd8;
      default: out = 4'd2;
   endcase
end
endmodule
