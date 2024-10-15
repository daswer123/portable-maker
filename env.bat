@echo off

:: This environment configuration script sets up variables for a Python project
:: It configures paths, environment variables, and project-specific settings
:: Used by other scripts to ensure consistent environment across the project

:: Project-specific settings (modify as needed)
set APP_FOLDER=book_translate
set REPO_URL=https://github.com/your-repo-url.git
set RESET_WHEN_UPDATE=true
set CUSTOM_HASH_OR_BRANCH=

:: Temporary directory settings
:: These redirect temp files to a local folder to avoid cluttering the system
set TEMP=%~dp0tmp
set TMP=%~dp0tmp
set TRANSFORMERS_CACHE=%~dp0tmp

:: User profile settings
:: These prevent modifications to the actual user profile
set appdata=%~dp0tmp\user
set userprofile=%~dp0tmp\user

:: Path configurations
:: Sets up paths for Python, Git, FFmpeg, and CUDA
set PYTHON_PATH=%~dp0system\python\bin
set GIT_PATH=%~dp0system\git
set FFMPEG_PATH=%~dp0system\ffmpeg
set CUDA_PATH=%PYTHON_PATH%\Lib\site-packages\torch\lib

:: Executable paths (do not modify)
set PYTHON=%PYTHON_PATH%\python.exe
set GIT=%GIT_PATH%\cmd\git.exe

:: PATH environment variable
:: Adds necessary directories to the system PATH
set PATH=%PYTHON_PATH%;%GIT_PATH%\cmd;%GIT_PATH%\mingw64\bin;%GIT_PATH%\usr\bin;%FFMPEG_PATH%;%FFMPEG_PATH%\bin;%PATH%;%~dp0system\bin;

:: Additional settings
:: CUDA module loading configuration
set CUDA_MODULE_LOADING=LAZY

:: You can add more custom variables and settings below this line
:: Example: set MY_CUSTOM_VAR=value