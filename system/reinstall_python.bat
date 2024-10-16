@echo off
setlocal enabledelayedexpansion

echo WARNING: This script will delete the current Python installation and all dependencies.
echo It will reset Python to a clean state, similar to deleting and recreating a virtual environment.
echo Are you sure you want to continue? (Y/N)
set /p confirm=

if /i "%confirm%" neq "Y" (
    echo Operation cancelled.
    exit /b
)

:: Delete Python folder
if exist python rmdir /s /q python

:: Ask for Python version
echo Select the Python version to install:
echo 1. Python 3.12.6
echo 2. Python 3.11.10
echo 3. Python 3.10.14
echo 4. Python 3.9.19
echo 5. Python 3.8.18
set /p choice="Enter number (1-5): "

:: Set URL based on choice
if "%choice%"=="1" set "url=https://github.com/bjia56/portable-python/releases/download/cpython-v3.12.6-build.5/python-full-3.12.6-windows-x86_64.zip"
if "%choice%"=="2" set "url=https://github.com/bjia56/portable-python/releases/download/cpython-v3.11.10-build.1/python-full-3.11.10-windows-x86_64.zip"
if "%choice%"=="3" set "url=https://github.com/bjia56/portable-python/releases/download/cpython-v3.10.14-build.5/python-3.10.14-windows-x86_64.zip"
if "%choice%"=="4" set "url=https://github.com/bjia56/portable-python/releases/download/cpython-v3.9.19-build.5/python-3.9.19-windows-x86_64.zip"
if "%choice%"=="5" set "url=https://github.com/bjia56/portable-python/releases/download/v3.8.18-build.0/python-3.8.18-windows-x86_64.zip"

:: Download archive using WebClient
echo Downloading Python...
powershell -Command "& { $webClient = New-Object System.Net.WebClient; $webClient.DownloadFile('%url%', 'python.zip') }"

:: Extract archive
echo Extracting archive...
powershell -Command "& {Expand-Archive -Path 'python.zip' -DestinationPath 'pytemp' -Force}"

:: Delete archive
del python.zip

:: Move and rename folder
move pytemp\python* python

:: Remove pytemp folder
rmdir /s /q pytemp

echo Installation complete. Python is ready to use.
pause
