import numpy as np
import matplotlib.pyplot as plt
from skimage.metrics import peak_signal_noise_ratio as psnr
from skimage.metrics import structural_similarity as ssim
import cv2  

# --- CẤU HÌNH ---
WIDTH = 430
HEIGHT = 554

# Hàm đọc file Hex (từ bài trước)
def load_hex_image(filename):
    pixels = []
    try:
        with open(filename, 'r') as f:
            for line in f:
                line = line.strip()
                if not line or line.startswith('//'): continue
                for token in line.split():
                    try: pixels.append(int(token, 16))
                    except: continue
        
        expected = WIDTH * HEIGHT
        if len(pixels) != expected:
            print(f"Lưu ý: File {filename} có {len(pixels)} pixel (Mong đợi {expected}). Sẽ resize.")
            if len(pixels) < expected: pixels += [0]*(expected-len(pixels))
            else: pixels = pixels[:expected]
            
        return np.array(pixels, dtype=np.uint8).reshape((HEIGHT, WIDTH))
    except Exception as e:
        print(f"Lỗi đọc file {filename}: {e}")
        return None

# --- LOAD DỮ LIỆU ---

# 1. Load ảnh Output từ Verilog
img_verilog = load_hex_image('MedianFilter/simulation/modelsim/pic_output.txt')

# 2. Load ảnh Gốc (Reference)
try:
    # Đọc ảnh, chuyển sang grayscale
    img_ref = cv2.imread('baitap1_anhgoc.jpg', cv2.IMREAD_GRAYSCALE) 
    # Resize về đúng kích thước 430x554 nếu cần
    if img_ref is not None:
        img_ref = cv2.resize(img_ref, (WIDTH, HEIGHT))
except:
    img_ref = None
    print("Không tìm thấy file ảnh gốc để so sánh.")


# --- TÍNH TOÁN VÀ HIỂN THỊ ---
if img_verilog is not None and img_ref is not None:
    
    # Tính PSNR
    score_psnr = psnr(img_ref, img_verilog)
    
    # Tính SSIM
    # data_range=255 vì ảnh 8-bit
    score_ssim = ssim(img_ref, img_verilog, data_range=255)

    print("-" * 30)
    print(f"KẾT QUẢ ĐÁNH GIÁ (Quantitative):")
    print(f"SIZE: {WIDTH}x{HEIGHT}")
    print(f"PSNR: {score_psnr:.4f} dB")
    print(f"SSIM: {score_ssim:.4f}")
    print("-" * 30)

    # Hiển thị ảnh để so sánh
    fig, ax = plt.subplots(1, 2, figsize=(10, 5))
    ax[0].imshow(img_ref, cmap='gray')
    ax[0].set_title("Ảnh Gốc (Reference)")
    ax[0].axis('off')
    
    ax[1].imshow(img_verilog, cmap='gray')
    ax[1].set_title(f"Ảnh Verilog Output\nPSNR: {score_psnr:.2f}dB - SSIM: {score_ssim:.2f}")
    ax[1].axis('off')
    
    plt.tight_layout()
    plt.show()

elif img_ref is None:
    print("Chưa load được ảnh gốc. Hãy cung cấp file 'original_image.jpg' hoặc 'pic_input.txt' để so sánh.")
