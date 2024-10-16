@echo off

call env.bat

:: This script clones a Git repository and sets up the project environment
:: It uses variables defined in env.bat for configuration
:: If specified, it can checkout a specific branch or commit

:: Clone the repository
echo Cloning repository…
git clone %REPO_URL% %APP_FOLDER%

:: Check if cloning was successful
if errorlevel 1 (
echo Error during repository cloning. Please check the repository URL.
exit /b
)

echo Repository cloned into folder: %APP_FOLDER%

:: Change to the project directory
cd %APP_FOLDER%

:: Switch to custom hash or branch if specified
if not "%CUSTOM_HASH_OR_BRANCH%"=="" (
echo Switching to %CUSTOM_HASH_OR_BRANCH%…
git checkout %CUSTOM_HASH_OR_BRANCH%
)

echo =======================================
echo Clone and setup completed for project: %APP_FOLDER%
echo =======================================
pause