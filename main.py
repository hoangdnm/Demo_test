import subprocess
import time
files = [
    'get_candle_raw_data.py',
    'get_ticker_raw_data.py',
    'get_trade_raw_data.py'
]
processes = []
# Khởi động tất cả tiến trình trong lần lặp này
for file in files:
    print(f"Đang chạy {file}...")
    p = subprocess.Popen(["python3", file])#sử dụng python3 để đảm bảo chạy trên môi trường Python 3
    time.sleep(1)  # Đợi 1 giây trước khi khởi động
    processes.append(p)
# Chờ tất cả tiến trình trong lần lặp này hoàn tất
for p in processes:
    p.wait()
