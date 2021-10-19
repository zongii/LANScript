@echo off
set /p login="Podaj Login: "
set /p pass="Podaj Hasło: "

echo "==============================="
echo "POTWIERDZENIE UTWORZENIA KONTA"
echo "Nazwa uzytkownika: %login%"
echo "Haslo: %pass%"
echo "==============================="

set /p continue="Czy chcesz kontynuowac? [T/N]: "

IF "%continue%"=="T" (
    goto :next
)
goto :cancel


:next
echo "Kontynnujesz..."
REM Tworzenie konta użytkownika
net user "%login%" "%pass%" /add /passwordchg:no /expires:"23/10/2021" 
goto :eof


:cancel
echo "Przerywasz."
goto :eof


:eof
PAUSE >nul