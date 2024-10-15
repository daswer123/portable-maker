@echo off

:: This environment configuration script sets up variables for a Python project
:: It configures paths, environment variables, and project-specific settings
:: Used by other scripts to ensure consistent environment across the project

:: Directory settings
set SYSTEM_DIR=%~dp0system
set TMP_DIR=%~dp0tmp

:: Project-specific settings (modify as needed)
set APP_FOLDER=book_translate
set REPO_URL=https://github.com/your-repo-url.git
set CUSTOM_HASH_OR_BRANCH=

:: Project-specific settings EXTRA (modify as needed)
set RESET_WHEN_UPDATE=true
set CLEAR_TEMP_EVERY_RUN=true
set PRIVATE_REPO=false
set GITHUB_SSH_PATH=%SYSTEM_DIR%\ssh\id_ed

:: Set up SSH command for private repositories
if /i "%PRIVATE_REPO%"=="true" (
set GIT_SSH_COMMAND=ssh -i "%GITHUB_SSH_PATH%"
)

:: Temporary directory settings
:: These redirect temp files to a local folder to avoid cluttering the system
set TEMP=%TMP_DIR%
set TMP=%TMP_DIR%
set TRANSFORMERS_CACHE=%TMP_DIR%

:: User profile settings
:: These prevent modifications to the actual user profile
set appdata=%SYSTEM_DIR%\user
set userprofile=%SYSTEM_DIR%\user

:: Path configurations
:: Sets up paths for Python, Git, FFmpeg, and CUDA
set PYTHON_PATH=%SYSTEM_DIR%\python\bin
set GIT_PATH=%SYSTEM_DIR%\git
set FFMPEG_PATH=%SYSTEM_DIR%\ffmpeg
set CUDA_PATH=%PYTHON_PATH%\Lib\site-packages\torch\lib

:: Executable paths (do not modify)
set PYTHON=%PYTHON_PATH%\python.exe
set GIT=%GIT_PATH%\cmd\git.exe

:: PATH environment variable
:: Adds necessary directories to the system PATH
set PATH=%PYTHON_PATH%;%GIT_PATH%\cmd;%GIT_PATH%\mingw64\bin;%GIT_PATH%\usr\bin;%FFMPEG_PATH%;%FFMPEG_PATH%\bin;%PATH%;%SYSTEM_DIR%\bin;

:: Additional settings
:: CUDA module loading configuration
set CUDA_MODULE_LOADING=LAZY

:: You can add more custom variables and settings below this line
:: Example: set MY_CUSTOM_VAR=value