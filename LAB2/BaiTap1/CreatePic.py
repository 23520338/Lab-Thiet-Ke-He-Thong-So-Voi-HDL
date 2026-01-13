import numpy as np
import matplotlib.pyplot as plt

# --- CẤU HÌNH KÍCH THƯỚC MỚI (CHÍNH XÁC) ---
WIDTH = 430
HEIGHT = 554

def load_final_image(filename):
    print(f"Reading file {filename}...")
    pixels = []
    try:
        with open(filename, 'r') as f:
            for line in f:
                line = line.strip()
                if not line or line.startswith('//'): continue # Bỏ qua header
                
                # Đọc số hex
                tokens = line.split()
                for token in tokens:
                    try:
                        pixels.append(int(token, 16))
                    except ValueError:
                        continue
                        
        print(f"-> So luong pixel doc duoc: {len(pixels)}")
        
        # Kiểm tra khớp kích thước
        expected = WIDTH * HEIGHT
        if len(pixels) != expected:
             print(f"CANH BAO: File co {len(pixels)} pixel, nhung mong doi {expected}.")
             # Tự động fix lỗi thiếu/thừa pixel để không crash
             if len(pixels) < expected:
                 pixels += [0] * (expected - len(pixels))
             else:
                 pixels = pixels[:expected]

        # Tạo ảnh
        img = np.array(pixels, dtype=np.uint8).reshape((HEIGHT, WIDTH))
        return img

    except FileNotFoundError:
        print("Loi: Khong tim thay file pic_output.txt")
        return None

# --- MAIN ---
img = load_final_image('MedianFilter/simulation/modelsim/pic_output.txt')

if img is not None:
    plt.figure(figsize=(6, 8)) # Tỉ lệ dọc
    plt.imshow(img, cmap='gray', vmin=0, vmax=255)
    plt.title(f"Final Image ({WIDTH}x{HEIGHT})")
    plt.axis('off')
    plt.tight_layout()
    plt.show()
    
    plt.imsave('final_result.png', img, cmap='gray')
    print("Da luu anh: final_result.png")
