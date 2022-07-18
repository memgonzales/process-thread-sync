@echo off
set /p test="Enter test filename: "

set loop=0
:loop
python process_sync.py < %test%
timeout /t 1
set /a loop=%loop%+1 
if "%loop%"=="200" goto next
goto loop

:next
echo Finished without deadlock
PAUSE