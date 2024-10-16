@echo off
call env.bat

:: This script activates a custom environment for the project
:: It sets up paths, variables, and provides a custom prompt
:: To deactivate, simply close this terminal and open a new one

:: Add signature to indicate activation
echo =======================================
echo Activating environment for %APP_FOLDER%
echo =======================================

:: Change the command prompt window title to show the environment is activated
title %APP_FOLDER% Environment Activated

:: Inform the user that the environment is now active
echo Environment activated. You are now working in %APP_FOLDER%.
echo To deactivate, close this terminal and open a new one.

:: Modify the prompt for visual indication of activation
set PROMPT=[%APP_FOLDER%] $P$G

:: Move to Project Folder
cd %APP_FOLDER%

:: Wait for command input in interactive mode
cmd /K