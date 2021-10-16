@echo off
set /p login="Podaj Login: "
set /p pass="Podaj Hasło: "

echo "==============================="
echo "POTWIERDZENIE UTWORZENIA KONTA"
echo "Nazwa użytkownika: %login%"
echo "Hasło: %pass%"
echo "==============================="

set /p continue="Czy chcesz kontynuować? [T/N]: "

IF "%continue%"=="T" (
    ECHO "dotarles tu"
    goto :next
)
goto :cancel


:next
echo "Kontynnujesz..."

REM Ukrycie folderu
cd "C:\"
attrib +h "PFE-Files"

REM Tworzenie konta użytkownika
net user "%login%" "%pass%" /add /passwordchg:no /expires:"23/10/2021" 


pause>nul
goto :eof


:cancel
echo "Przerywasz."
PAUSE >nul
goto :eof


:eof
