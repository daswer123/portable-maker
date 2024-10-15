@echo off

:: This is the main launch script for the end user
:: It runs the application after the environment is set up
:: You can modify 'app.py' to the actual entry point of your application

:: Load environment variables and settings
call env.bat

:: Clean temporary files before launching if CLEAR_TEMP_EVERY_RUN is true
if /i "%CLEAR_TEMP_EVERY_RUN%"=="true" (
    echo Cleaning temporary files...
    if exist "%TMP_DIR%" (
        rd /s /q "%TMP_DIR%"
        mkdir "%TMP_DIR%"
    )

    if exist "%SYSTEM_DIR%\tmp" (
        rd /s /q "%SYSTEM_DIR%\tmp"
        mkdir "%SYSTEM_DIR%\tmp"
    )
    echo Temporary files cleaned.
)

:: Change to the project directory
cd %APP_FOLDER%

:: Run the main application
echo Starting the application...
%PYTHON% --version

:: Keep the window open after the application exits
echo Application has finished. Press any key to close this window.
pause