@echo off

:: This script updates the project repository and optionally resets changes or installs dependencies
:: It uses settings from env.bat to determine the update behavior

:: Load environment variables and settings
call env.bat

:: Change to the project directory
cd %APP_FOLDER%

:: Reset the repository if RESET_WHEN_UPDATE is set to true
if /i "%RESET_WHEN_UPDATE%"=="true" (
echo Resetting repository to last commit…
git reset --hard HEAD
)

:: Pull the latest changes from the remote repository
echo Updating repository…
git pull

:: Install dependencies if RESET_WHEN_UPDATE is set to false
if /i "%RESET_WHEN_UPDATE%"=="false" (
echo Installing dependencies…
%PYTHON% -m pip install -r requirements.txt
)

echo Update complete
pause