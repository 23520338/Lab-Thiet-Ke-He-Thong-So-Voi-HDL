`timescale 1ns/1ps

module tb_ConvertRGB;

    // --- 1. KHAI BÁO THAM SỐ & TÍN HIỆU ---
    parameter IMG_WIDTH  = 2048;
    parameter IMG_HEIGHT = 1365;
    parameter TOTAL_PIXELS = IMG_WIDTH * IMG_HEIGHT; // Tổng số lần lặp

    reg clk;
    reg [7:0] r, g, b;
    reg [3:0] level;
    wire [7:0] gray_out;

    // Bộ nhớ lưu ảnh Input 
    reg [23:0] img_data [0:TOTAL_PIXELS-1];
    
    // Biến file và biến chạy vòng lặp
    integer out_file;
    integer i; // Biến dùng cho vòng lặp for

    // --- 2. KẾT NỐI MODULE (DUT) ---
    ConvertRGB uut (
        .r(r), 
        .g(g), 
        .b(b), 
        .level(level), 
        .gray_out(gray_out)
    );

    // --- 3. TẠO CLOCK ---
    initial clk = 0;
    always #5 clk = ~clk; // Chu kỳ 10ns

    // --- 4. CHƯƠNG TRÌNH CHÍNH  ---
    initial begin
        // A. KHỞI TẠO
        r = 0; g = 0; b = 0;
        level = 4'd10; // Chọn mức sáng
        
        // Load dữ liệu từ file Hex vào mảng RAM
        $readmemh("image_in.hex", img_data);
        
        // Mở file để ghi kết quả
        out_file = $fopen("image_out.hex", "w");
        
        #20;

        $display("--- BAT DAU XU LY %d PIXEL ---", TOTAL_PIXELS);

        // ==========================================================
        // B. VÒNG LẶP FOR ĐỂ QUÉT ẢNH
        // ==========================================================
        for (i = 0; i < TOTAL_PIXELS; i = i + 1) begin
            
            // 1. Đồng bộ với Clock
            @(posedge clk); 

            // 2. Đưa dữ liệu vào (Input Driving)
            // Lấy 24-bit từ mảng, cắt ra R, G, B đưa vào module
            r <= img_data[i][23:16];
            g <= img_data[i][15:8];
            b <= img_data[i][7:0];

            // 3. Đợi kết quả (Output Sampling)
            #1; 
            
            // 4. Ghi kết quả vào file
            $fwrite(out_file, "%2h\n", gray_out);
            
            // (Tùy chọn) In tiến độ mỗi khi xong 10% ảnh để đỡ sốt ruột
            if (i % (TOTAL_PIXELS/10) == 0) begin
                $display("-> Da xu ly: %0d%%", (i * 100) / TOTAL_PIXELS);
            end
        end
        // ==========================================================

        // C. KẾT THÚC
        $display("--- HOAN THANH! ---");
        $fclose(out_file); // Đóng file output
        $finish;           // Dừng mô phỏng
    end

endmodule