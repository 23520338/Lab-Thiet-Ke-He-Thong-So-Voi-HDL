`timescale 1ns/1ps

module tb_lab1;

    reg  [3:0] in;
    reg  [1:0] cnt;
    reg        load_en;
    reg        clk;
    reg        rst;
    wire [3:0] out;

    //==============================
    // DUT
    //==============================
    lab1 dut (
        .in(in),
        .cnt(cnt),
        .load_en(load_en),
        .clk(clk),
        .rst(rst),
        .out(out)
    );

    //==============================
    // CLOCK 10ns
    //==============================
    always #5 clk = ~clk;

    //==============================
    // TASK: LOAD + STEP
    //==============================
    task load_and_step;
        input [3:0] t_in;
        input [2:0] t_cnt;
        begin
            load_en = 1;
            in  = t_in;
            cnt = t_cnt;
            #10;            // 1 clock
            load_en = 0;
        end
    endtask

    //==============================
    // TEST SEQUENCE
    //==============================
    initial begin
        // INIT
        clk     = 0;
        rst     = 0;
        load_en = 0;
        in      = 0;
        cnt     = 0;

        //----------------------------
        // RESET
        //----------------------------
        #10 rst = 1;

        //----------------------------
        // TEST SỐ 2 
        //----------------------------
        load_and_step(4'd2, 3'd0);  // 2 lần 1
        #20;
        load_and_step(4'd2, 3'd1);  // 2 lần 2
        #20;

        //----------------------------
        // TEST SỐ 3 
        //----------------------------
        load_and_step(4'd3, 3'd0);  // 3 lần 1
        #20;
        load_and_step(4'd3, 3'd1);  // 3 lần 2
        #20;
        load_and_step(4'd3, 3'd2);  // 3 lần 3
        #20;

        //----------------------------
        // TEST SỐ 5
        //----------------------------
        load_and_step(4'd5, 3'd0);
        #20;

        //----------------------------
        // TEST SỐ 0
        //----------------------------
        load_and_step(4'd0, 3'd0);
        #20;

        //----------------------------
        // TEST SỐ 8
        //----------------------------
        load_and_step(4'd8, 3'd0);
        #20;

		  //----------------------------
        // TEST SỐ 4
        //----------------------------
        load_and_step(4'd4, 3'd0);
        #20;
        load_and_step(4'd4, 3'd1);
        #20;
		  
		  //----------------------------
        // TEST SỐ 5 nếu cnt = 1
        //----------------------------
        load_and_step(4'd5, 3'd1);
        #20;
		  
        //----------------------------
        // CHẠY FSM BÌNH THƯỜNG
        //----------------------------
        #10;
        repeat (8) #10;

        //----------------------------
        // KẾT THÚC
        //----------------------------
        $display("=== END OF TEST ===");
        #20;
        $finish;
    end

    //==============================
    // MONITOR
    //==============================
    initial begin
        $display(" time | rst load in cnt | state | out");
        $monitor("%4t |  %b    %b   %d   %d  |   %d   |  %d",
                 $time, rst, load_en, in, cnt, dut.state, out);
    end

endmodule
