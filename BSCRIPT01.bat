@echo off

rem Open five websites
start "" "https://www.google.com"
start "" "https://www.facebook.com"
start "" "https://www.youtube.com"
start "" "https://www.instagram.com"
start "" "https://www.discord.com"

rem Launch Calculator
start calc.exe

rem Launch Notepad
start notepad.exe

rem Wait for 1 minute (60 seconds)
timeout t 60

rem Initiate system shutdown after 1 minute delay
shutdown /s /t 60

rem Inform the user
echo The system will shut down in 1 minute. Press any key to stop.
Pause
shutdown /a