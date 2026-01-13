module ConvertRGB (
    input [7:0] r,        // Tín hiệu Red (0-255)
    input [7:0] g,        // Tín hiệu Green (0-255)
    input [7:0] b,        // Tín hiệu Blue (0-255)
    input [3:0] level,    // Mức độ sáng người dùng chọn (ví dụ: 1 đến 10)
    
    output reg [7:0] gray_out // Kết quả ảnh xám cuối cùng (8-bit)
);

    // --- KHAI BÁO BIẾN TRUNG GIAN (REGISTERS) ---
    reg [15:0] mult_r, mult_g, mult_b;
    
    // Biến chứa tổng trọng số RGB (trước khi chia)
    reg [15:0] sum_gray;
    
    // Giá trị độ sáng được cộng thêm (tính toán từ level)
    reg [15:0] brightness_val; 
    
    // Kết quả tạm thời sau khi cộng độ sáng (có thể vượt quá 255)
    reg [15:0] gray_final;

    // --- LOGIC TỔ HỢP (COMBINATIONAL LOGIC) ---
    always @(*) begin
        // ============================================================
        // BƯỚC 1: CHUYỂN ĐỔI RGB SANG GRAYSCALE
        // ============================================================
        // Công thức chuẩn mắt người: Y = 0.299R + 0.587G + 0.114B
        // Trong phần cứng (số nguyên), ta nhân cả 2 vế với 256 để khử số thập phân:
        // Y * 256 ≈ 77*R + 150*G + 29*B
        
        mult_r = r * 77;   // Trọng số cho màu Đỏ
        mult_g = g * 150;  // Trọng số cho màu Lục (Mắt nhạy nhất)
        mult_b = b * 29;   // Trọng số cho màu Lam (Mắt kém nhạy nhất)
        
        // Cộng tổng và chia cho 256 bằng cách dịch phải 8 bit (>> 8)
        sum_gray = (mult_r + mult_g + mult_b) >> 8;

        // ============================================================
        // BƯỚC 2: TÍNH TOÁN ĐỘ SÁNG CỘNG THÊM
        // ============================================================
        // Quy đổi từ mức người dùng chọn (level 1-10) ra giá trị pixel thực tế.
        // Ví dụ: Level 5 -> cộng thêm 100 vào giá trị pixel.
        brightness_val = level * 20; 

        // ============================================================
        // BƯỚC 3: CỘNG ĐỘ SÁNG VÀO ẢNH GỐC
        // ============================================================
        gray_final = sum_gray + brightness_val;

        // ============================================================
        // BƯỚC 4: CHỐNG TRÀN SỐ (SATURATION / CLAMPING)
        // ============================================================
        // Vì gray_final là 16-bit, nó có thể chứa giá trị > 255 (ví dụ 300).
        // Nhưng output gray_out chỉ có 8-bit (max 255).
        // Nếu không có bước này, 300 sẽ bị cắt thành 44 (300 % 256), làm ảnh bị lốm đốm đen sai lệch.
        
        if (gray_final > 255) 
            gray_out = 8'd255;  // Nếu vượt quá ngưỡng, gán bằng giá trị trắng nhất
        else 
            gray_out = gray_final[7:0]; // Nếu an toàn, lấy 8 bit thấp
    end
endmodule