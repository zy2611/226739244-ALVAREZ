@echo off

:menu
echo Select a utility to execute:
echo 1. ipconfig
echo 2. tasklist
echo 3. taskkill
echo 4. chkdsk
echo 5. format
echo 6. defrag
echo 7. find
echo 8. attrib
set /p choice="Enter your choice (1-8): "

if %choice%==1 goto ipconfig
if %choice%==2 goto tasklist
if %choice%==3 goto taskkill
if %choice%==4 goto chkdsk
if %choice%==5 goto format
if %choice%==6 goto defrag
if %choice%==7 goto find
if %choice%==8 goto attrib
echo Invalid choice.
goto menu

:ipconfig
ipconfig
goto end

:tasklist
tasklist
goto end

:taskkill
set /p pid="Enter the PID of the process to kill: "
taskkill /PID %pid%
goto end

:chkdsk
chkdsk
goto end

:format
set /p drive="Enter the drive to format (e.g., E:): "
format %drive%
goto end

:defrag
set /p drive="Enter the drive to defrag (e.g., C:): "
defrag %drive%
goto end

:find
set /p search="Enter the string to find: "
set /p file="Enter the file to search in: "
find "%search%" %file%
goto end

:attrib
set /p file="Enter the file or directory: "
attrib %file%
goto end

:end
pause