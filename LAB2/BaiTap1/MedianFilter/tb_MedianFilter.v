`timescale 1ns/1ps

module tb_MedianFilter;
    // --- 1. CẤU HÌNH KÍCH THƯỚC ẢNH ---
    parameter WIDTH  = 430; // Chiều rộng ảnh (số cột)
    parameter HEIGHT = 554; // Chiều cao ảnh (số dòng)
    parameter SIZE   = WIDTH * HEIGHT; // Tổng số pixel (238,220)

    // --- 2. KHAI BÁO TÍN HIỆU ---
    reg clk;
    reg rst;
    reg pixel_valid;    // Biến điều khiển: báo cho module biết đang gửi data
    reg [7:0] pixel_in; // Dữ liệu pixel đầu vào (từng byte một)

    wire pixel_out_valid; // Module báo lại: "Tao đã tính xong 1 pixel"
    wire [7:0] pixel_out; // Giá trị pixel kết quả

    // --- 3. KẾT NỐI MODULE (DUT) ---
    MedianFilter #(.WIDTH(WIDTH)) dut (
        .clk(clk),
        .rst(rst),
        .pixel_valid(pixel_valid),
        .pixel_in(pixel_in),
        .pixel_out_valid(pixel_out_valid),
        .pixel_out(pixel_out)
    );

    // --- 4. BIẾN HỖ TRỢ ĐỌC/GHI FILE ---
    reg [7:0] img_in [0:SIZE-1]; // Mảng lớn chứa toàn bộ ảnh input
    integer outfile;             // Biến đại diện file output
    integer i;                   // Biến đếm vòng lặp gửi input
    integer out_count;           // Đếm số pixel đã ghi được ra file output

    // --- 5. TẠO XUNG CLOCK ---
    initial clk = 0;
    always #5 clk = ~clk; // Chu kỳ 10ns (100MHz)

    // --- 6. CHƯƠNG TRÌNH CHÍNH ---
    initial begin
        // A. Khởi tạo giá trị ban đầu
        rst = 1; pixel_valid = 0; pixel_in = 0;
        i = 0; out_count = 0;

        // B. Load ảnh từ file txt vào bộ nhớ mảng

        $readmemh("pic_input.txt", img_in); 

        // C. Tạo file để ghi kết quả
        outfile = $fopen("pic_output.txt", "w");

        // D. Reset hệ thống
        #20 rst = 0;          // Thả reset sau 20ns
        repeat(5) @(posedge clk); // Đợi vài chu kỳ cho ổn định

        // --- GIAI ĐOẠN XỬ LÝ (PIPELINE) ---
        $display("START: Bat dau xu ly %0d pixel...", SIZE);
        
        // Bật cờ Valid lên 1 để báo hiệu bắt đầu truyền dữ liệu
        pixel_valid = 1; 
        
        // Vòng lặp: Gửi từng pixel vào module
        while (i < SIZE) begin
            // 1. Đưa dữ liệu vào
            pixel_in <= img_in[i]; // Lấy pixel thứ i gửi vào
            i = i + 1;             // Tăng biến đếm input

            // 2. Chờ cạnh lên của clock (đồng bộ hóa)
            @(posedge clk);
            
            // 3. Kiểm tra xem có Output văng ra chưa?
            // Dùng #1 để lùi thời gian một chút sau cạnh lên, đảm bảo đọc đúng giá trị dây
            #1; 
            if (pixel_out_valid) begin
                // Ghi vào file dưới dạng Hex (2 số), ví dụ: A5
                $fwrite(outfile, "%2h\n", pixel_out);
                out_count = out_count + 1;
            end
        end
        
        // --- GIAI ĐOẠN FLUSH (ĐẨY DỮ LIỆU TỒN ĐỌNG) ---
        // Khi gửi hết pixel cuối cùng, module vẫn còn giữ dữ liệu trong Line Buffer (2 dòng).
        // Ta cần tiếp tục gửi tín hiệu (dù là rác) để đẩy kết quả ra ngoài.
        
        $display("Input done. Flushing pipeline...");
        
        pixel_valid = 1; // Vẫn giữ valid
        
        // Lặp thêm khoảng 1 dòng + dư ra xíu để đảm bảo đẩy hết sạch
        repeat(WIDTH + 50) begin 
            pixel_in <= 0; // Gửi số 0 vào (padding), không quan trọng giá trị này
            @(posedge clk);
            
            #1; // Kiểm tra output
            if (pixel_out_valid) begin
                // Chỉ ghi nếu chưa đủ số lượng (đề phòng ghi dư)
                if (out_count < SIZE) begin 
                     $fwrite(outfile, "%2h\n", pixel_out);
                     out_count = out_count + 1;
                end
            end
        end

        // --- KẾT THÚC ---
        pixel_valid = 0; // Tắt tín hiệu
        repeat(10) @(posedge clk); 

        $fclose(outfile); // Đóng file output quan trọng để lưu dữ liệu
        $display("DONE! Ghi duoc %0d/%0d pixel.", out_count, SIZE);
        
        // Kiểm tra nhanh kết quả
        if (out_count == SIZE) 
            $display("SUCCESS: File output day du!");
        else
            $display("WARNING: Thieu %0d pixel!", SIZE - out_count);

        $stop; // Dừng mô phỏng
    end
endmodule