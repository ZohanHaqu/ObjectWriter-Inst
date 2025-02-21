@echo off
:: Define the URL and the path to the temp directory
set URL=https://github.com/ZohanHaqu/ObjectWriter-Inst/raw/refs/heads/main/ObjectWriter.msi
set TEMP_PATH=%temp%\ObjectWriter.msi

:: Download the file using PowerShell
powershell -Command "Invoke-WebRequest -Uri %URL% -OutFile %TEMP_PATH%"

:: Check if the file was downloaded successfully
if exist "%TEMP_PATH%" (
    echo File downloaded successfully to %TEMP_PATH%
    :: Open the file
    start %TEMP_PATH%
) else (
    echo Failed to download the file.
)

pause
