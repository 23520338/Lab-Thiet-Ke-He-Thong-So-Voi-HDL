from PIL import Image

# 1. Mở ảnh và resize (nếu ảnh quá lớn, mô phỏng sẽ rất lâu)
img = Image.open("baitap2_anhgoc.jpg")
width, height = img.size
pixels = img.load()

print(f"Kích thước ảnh gốc: {width} x {height}")
print(f"Tổng số pixel: {width * height}") 

# 2. Ghi ra file text (định dạng Hex: RR GG BB)
with open("image_in.hex", "w") as f:
    for y in range(height):
        for x in range(width):
            r, g, b = pixels[x, y]
            # Ghi mỗi dòng là 1 pixel gồm 24 bit (8 bit R, 8 bit G, 8 bit B)
            f.write(f"{r:02x}{g:02x}{b:02x}\n")

print(f"Đã tạo file image_in.hex với kích thước {width}x{height}")
