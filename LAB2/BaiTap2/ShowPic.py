import numpy as np
from PIL import Image
import os

# ================= CẤU HÌNH =================
# 1. Kích thước ảnh (Phải khớp với ảnh gốc ban đầu)
WIDTH = 2048
HEIGHT = 1365

# 2. Tên file
INPUT_HEX_FILE = "ConvertRGBToGray/simulation/modelsim/image_out.hex"  # Tên file Verilog đã ghi ra
OUTPUT_IMG_FILE = "ket_qua_output.jpg"  # Tên file ảnh muốn lưu
# ============================================

def main():
    print(f"--- Đang bắt đầu xử lý ảnh {WIDTH}x{HEIGHT} ---")
    
    # 1. Kiểm tra file tồn tại
    if not os.path.exists(INPUT_HEX_FILE):
        print(f"LỖI: Không tìm thấy file '{INPUT_HEX_FILE}'")
        print("Hãy kiểm tra lại xem Verilog đã chạy xong và ghi file chưa.")
        return

    # 2. Đọc dữ liệu từ file Hex
    print(f"Đang đọc file {INPUT_HEX_FILE}...")
    with open(INPUT_HEX_FILE, "r") as f:
        lines = f.readlines()

    print(f"Đã đọc {len(lines)} dòng từ file.")

    # 3. Chuyển đổi Hex sang số nguyên (Xử lý lỗi 'xx')
    pixel_data = []
    error_count = 0

    for line in lines:
        line = line.strip()
        # Bỏ qua dòng trống
        if not line:
            continue
            
        # Kiểm tra nếu dòng chứa 'x' (lỗi từ Verilog)
        if 'x' in line.lower() or 'z' in line.lower():
            pixel_data.append(0) # Gán màu đen cho điểm lỗi
            error_count += 1
        else:
            try:
                # Chuyển hex sang int
                val = int(line, 16)
                pixel_data.append(val)
            except ValueError:
                pixel_data.append(0)
                error_count += 1

    if error_count > 0:
        print(f"Cảnh báo: Có {error_count} pixels bị lỗi (xx) và đã được gán bằng 0.")

    # 4. Kiểm tra và điều chỉnh số lượng pixel
    expected_pixels = WIDTH * HEIGHT
    actual_pixels = len(pixel_data)

    if actual_pixels != expected_pixels:
        print(f"Lệch kích thước! Cần {expected_pixels}, thực tế có {actual_pixels}.")
        
        if actual_pixels > expected_pixels:
            print("-> Đang cắt bớt dữ liệu thừa...")
            pixel_data = pixel_data[:expected_pixels]
        else:
            print("-> Đang thêm dữ liệu trống (đen) vào cuối cho đủ...")
            pixel_data = pixel_data + [0] * (expected_pixels - actual_pixels)
    else:
        print("Kích thước dữ liệu hoàn hảo!")

    # 5. Tạo ảnh
    try:
        # Chuyển list thành mảng Numpy
        arr = np.array(pixel_data, dtype=np.uint8)
        
        # Reshape thành ma trận 2D (Hàng, Cột)
        matrix = arr.reshape((HEIGHT, WIDTH))
        
        # Tạo đối tượng ảnh từ mảng (Mode 'L' là Grayscale)
        img = Image.fromarray(matrix, 'L')
        
        # Hiển thị và lưu
        img.show()
        img.save(OUTPUT_IMG_FILE)
        print(f"THÀNH CÔNG! Đã lưu ảnh vào '{OUTPUT_IMG_FILE}'")
        
    except Exception as e:
        print("LỖI khi tạo ảnh:", e)

if __name__ == "__main__":
    main()
