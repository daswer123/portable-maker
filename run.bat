@echo off

:: This is the main launch script for the end user
:: It runs the application after the environment is set up
:: You can modify 'app.py' to the actual entry point of your application

:: Load environment variables and settings
call env.bat

:: Change to the project directory
cd %APP_FOLDER%

:: Run the main application
echo Starting the application…
%PYTHON% app.py

:: Keep the window open after the application exits
echo Application has finished. Press any key to close this window.
pause