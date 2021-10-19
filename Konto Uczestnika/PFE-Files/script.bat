@echo off


REM Ukrycie folderu
cd "C:\"
attrib +h "PFE-Files"
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d C:\PFE-Files\Tapety\wallpaper.jpg /f
cp "C:\PFE-Files\instrukcja.pdf" "C:\Users\%username%\Desktop"
pause>nul
