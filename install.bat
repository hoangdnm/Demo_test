@echo off
echo ========================================
echo     Cai dat Dependencies cho Du an
echo ========================================

echo.
echo Dang kiem tra Python...
python --version
if errorlevel 1 (
    echo KHONG TIM THAY PYTHON! Hay cai dat Python truoc.
    pause
    exit /b 1
)

echo.
echo Dang nang cap pip...
python -m pip install --upgrade pip

echo.
echo Dang cai dat cac thu vien tu requirements.txt...
pip install -r requirements.txt

echo.
echo Dang cai dat ODBC Driver cho SQL Server...
echo Chi dan: Neu chua cai dat, hay tai tu:
echo https://docs.microsoft.com/en-us/sql/connect/odbc/download-odbc-driver-for-sql-server

echo.
echo ========================================
echo       CAI DAT HOAN TAT!
echo ========================================
echo.
echo De chay chuong trinh:
echo   python main.py
echo.
pause
