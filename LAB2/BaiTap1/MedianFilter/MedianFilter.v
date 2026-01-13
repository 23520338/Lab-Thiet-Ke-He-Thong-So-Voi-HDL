module MedianFilter #(
    parameter WIDTH = 430 						// Chiều rộng ảnh
)(
    input  wire        clk,					// Tín hiệu Clock
    input  wire        rst,					// Tín hiệu reset
    input  wire        pixel_valid,			// Tín hiệu báo có dữ liệu gửi vào
    input  wire [7:0]  pixel_in,				// Giá trị pixel đầu vào (0-255)

    output reg         pixel_out_valid,   // Tín hiệu báo đang có output hợp lệ
    output reg  [7:0]  pixel_out				// Giá trị pixel đầu ra
);

    // Buffer lưu 2 dòng (Kích thước phải đúng bằng WIDTH)
    reg [7:0] line1 [0:WIDTH-1];				// Lưu trữ dòng thứ N-2
    reg [7:0] line2 [0:WIDTH-1];				// Lưu trữ dòng thứ N-1

    reg [9:0] x;  // biến đếm vị trí cột
    reg [9:0] y;  // biến đếm vị trí dòng

    // Cửa sổ 3x3
    reg [7:0] p0, p1, p2;
    reg [7:0] p3, p4, p5;
    reg [7:0] p6, p7, p8;

    wire [7:0] med;

    // Module tìm trung vị
    median9 u_med (
        .p0(p0), .p1(p1), .p2(p2),
        .p3(p3), .p4(p4), .p5(p5),
        .p6(p6), .p7(p7), .p8(p8),
        .med(med)
    );

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            x <= 0;
            y <= 0;
            pixel_out_valid <= 0;
            pixel_out <= 0;
				p0 <= 0; p1 <= 0; p2 <= 0;
            p3 <= 0; p4 <= 0; p5 <= 0;
            p6 <= 0; p7 <= 0; p8 <= 0;
        end else if (pixel_valid) begin
            // 1. Dịch cửa sổ
            p0 <= p1;  p1 <= p2;  p2 <= line1[x];
            p3 <= p4;  p4 <= p5;  p5 <= line2[x];
            p6 <= p7;  p7 <= p8;  p8 <= pixel_in;

            // 2. Cập nhật lại buffer
            line1[x] <= line2[x];
            line2[x] <= pixel_in;

            // 3. Logic xuất dữ liệu
            // p4 chứa dữ liệu tại dòng y-1. 
            // Ta bắt đầu xuất khi đã nạp đủ 1 dòng đầu tiên (y >= 1)
            if (y >= 1) begin
                pixel_out_valid <= 1'b1;

                // Nếu ở vùng giữa (x>=2 và y>=2): Lọc Median
                if (x >= 2 && y >= 2) begin
                    pixel_out <= med;
                end 
                // Nếu ở viền: Giữ nguyên giá trị gốc (p4)
                else begin
                    pixel_out <= p4;
                end
            end else begin
                pixel_out_valid <= 1'b0;
            end

            // 4. Xử lý bộ đếm tọa độ
            if (x == WIDTH-1) begin
                x <= 0;
                y <= y + 1;
            end else begin
                x <= x + 1;
            end
        end else begin
            pixel_out_valid <= 1'b0;
        end
    end
endmodule