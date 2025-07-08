#!/bin/bash

# Thư mục dự án & script cần chạy
PROJECT_DIR="/home/ubuntu/Demo_test"
SCRIPT="main.py"
PYTHON="/usr/bin/python3"

# Tần suất chạy (phút)
INTERVAL=5

# Tổng thời gian muốn chạy (phút)
DURATION=30

# Lệnh cron (chạy mỗi $INTERVAL phút)
CRON_CMD="*/$INTERVAL * * * * cd $PROJECT_DIR && $PYTHON $SCRIPT >> logs/cron.log 2>&1"

# Kiểm tra và thêm cron job nếu chưa có
if crontab -l 2>/dev/null | grep -v '^#' | grep -q "$SCRIPT"; then
    echo "⚠️ Cron job đã tồn tại, không thêm lại."
else
    (crontab -l 2>/dev/null | grep -v '^#'; echo "$CRON_CMD") | crontab -
    echo "✅ Đã thêm cron job chạy mỗi $INTERVAL phút."
fi

# Đặt lịch gỡ cron sau $DURATION phút (nếu có lệnh 'at')
if command -v at >/dev/null 2>&1; then
    REMOVE_CMD="crontab -l | grep -v '$SCRIPT' | crontab -"
    echo "$REMOVE_CMD" | at now + $DURATION minutes
    echo "🕒 Cron sẽ tự xoá sau $DURATION phút."
else
    echo "❌ Không tìm thấy lệnh 'at', không thể hẹn xoá tự động."
fi
