@echo off


REM Ukrycie folderu
cd "C:\"
attrib +h "PFE-Files"
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v WallPaper /t REG_SZ /d C:\PFE-Files\Tapety\wallpaper.jpg /f
copy "C:\PFE-Files\instrukcja.pdf" "C:\Users\%username%\Desktop"
copy "C:\PFE-Files\message.vbs" "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
pause>nul
