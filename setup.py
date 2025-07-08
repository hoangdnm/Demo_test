from setuptools import setup, find_packages

setup(
    name="crypto-data-collector",
    version="1.0.0",
    description="A cryptocurrency data collection system using Bitget API",
    author="Your Name",
    author_email="your.email@example.com",
    packages=find_packages(),
    install_requires=[
        "pandas>=1.5.0",
        "numpy>=1.24.0",
        "sqlalchemy>=1.4.0",
        "pyodbc>=4.0.0",
        "requests>=2.28.0",
        "websocket-client>=1.4.0",
        "python-dateutil>=2.8.0",
        "openpyxl>=3.0.0",
    ],
    python_requires=">=3.8",
    classifiers=[
        "Development Status :: 4 - Beta",
        "Intended Audience :: Developers",
        "License :: OSI Approved :: MIT License",
        "Programming Language :: Python :: 3",
        "Programming Language :: Python :: 3.8",
        "Programming Language :: Python :: 3.9",
        "Programming Language :: Python :: 3.10",
        "Programming Language :: Python :: 3.11",
    ],
    entry_points={
        "console_scripts": [
            "crypto-collector=main:main",
        ],
    },
)
