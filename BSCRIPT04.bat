@echo off
echo Sorting text files on Drive C: by date...
for /f "delims=" %%a in ('dir /b /od "C:\*.txt"') do (
    echo Archiving %%a...
    move "C:\%%a" "C:\Archive"
)

echo Sorting archived files by size...
cd /d "Z:\Archive"
for /f "delims=" %%b in ('dir /b /os') do (
    echo %%b
)

set /p permission=Do you want to delete the old, large files? (yes/no): 
if /i "%permission%"=="yes" (
    del /q "C:\Archive\*.txt"
    echo Old, large files deleted.
) else (
    echo Operation canceled.
)