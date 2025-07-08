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
    p = subprocess.Popen(["python", file])
    processes.append(p)
# Chờ tất cả tiến trình trong lần lặp này hoàn tất
for p in processes:
    p.wait()
