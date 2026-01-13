from PIL import Image
import numpy as np
import os

# ================== CẤU HÌNH ==================
INPUT_IMAGE  = "baitap1_nhieu.jpg"
OUTPUT_FILE  = "pic_input.txt"
WIDTH  = 430
HEIGHT = 554
# ==============================================

if not os.path.exists(INPUT_IMAGE):
    raise FileNotFoundError("Không tìm thấy file ảnh!")

# Mở ảnh và chuyển grayscale
img = Image.open(INPUT_IMAGE).convert("L")

# Resize cho khớp Verilog
img = img.resize((WIDTH, HEIGHT))

# Lấy dữ liệu pixel (row-major)
pixels = np.array(img, dtype=np.uint8).flatten()

# Ghi ra file HEX
with open(OUTPUT_FILE, "w") as f:
    for p in pixels:
        f.write(f"{p:02X}\n")

print("✔ Tạo pic_input.txt thành công")
print("✔ Tổng pixel:", WIDTH * HEIGHT)
