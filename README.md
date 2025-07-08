# Crypto Data Collector

Hệ thống thu thập dữ liệu cryptocurrency từ Bitget API và lưu vào SQL Server.

## Cài đặt

### 1. Yêu cầu hệ thống
- Python 3.8 trở lên
- SQL Server
- ODBC Driver 17 for SQL Server

### 2. Cài đặt tự động (Windows)
```bash
install.bat
```

### 3. Cài đặt thủ công
```bash
# Cài đặt dependencies
pip install -r requirements.txt

# Hoặc cài đặt từ setup.py
pip install -e .
```

## Cấu hình

### 1. Database
Chỉnh sửa file `.env` với thông tin database của bạn:
```
DB_USER=sa
DB_PASSWORD=YourStrong!Passw0rd
DB_SERVER=34.61.216.41,1433
DB_DATABASE=Coin_Analysis_DB
```

### 2. Coins mục tiêu
Chỉnh sửa danh sách coins trong file `rest_api.py`:
```python
list_coin = ['BTCUSDT','ETHUSDT','BNBUSDT',...]
```

## Sử dụng

### Chạy toàn bộ hệ thống
```bash
python main.py
```

### Chạy từng module riêng lẻ
```bash
# Thu thập dữ liệu ticker
python get_ticker_raw_data.py

# Thu thập dữ liệu candle
python get_candle_raw_data.py

# Thu thập dữ liệu trade
python get_trade_raw_data.py
```

## Cấu trúc dự án

```
├── requirements.txt      # Danh sách thư viện cần thiết
├── .env                 # Cấu hình môi trường
├── setup.py             # Cài đặt package
├── install.bat          # Script cài đặt tự động
├── main.py              # File chính
├── load_to_sql.py       # Module kết nối database
├── ws_client.py         # WebSocket client
├── rest_api.py          # REST API client
├── get_*.py             # Modules thu thập dữ liệu
└── log/                 # Thư mục logs
```

## Dependencies

- **pandas**: Xử lý và phân tích dữ liệu
- **sqlalchemy**: ORM và kết nối database
- **pyodbc**: Driver kết nối SQL Server
- **requests**: HTTP client cho REST API
- **websocket-client**: WebSocket client cho real-time data
- **python-dateutil**: Xử lý ngày tháng

## Troubleshooting

### 1. Lỗi kết nối database
- Kiểm tra thông tin kết nối trong `.env`
- Đảm bảo SQL Server đang chạy
- Kiểm tra firewall và port 1433

### 2. Lỗi ODBC Driver
- Tải và cài đặt: [ODBC Driver 17 for SQL Server](https://docs.microsoft.com/en-us/sql/connect/odbc/download-odbc-driver-for-sql-server)

### 3. Lỗi WebSocket
- Kiểm tra kết nối internet
- Xem logs trong thư mục `log/`
