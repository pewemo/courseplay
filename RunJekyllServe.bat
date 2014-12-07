@echo off
REM %~dp0 ist the directory the batch file is running in
cd %~dp0
call jekyll serve
echo Jekyll serve started
pause