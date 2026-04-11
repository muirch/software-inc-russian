@echo off
setlocal

set "TARGET=C:\Program Files (x86)\Steam\steamapps\workshop\content\362620\649847804"
set "REPO=%~dp0.."

if not exist "%TARGET%" (
    echo Workshop directory not found at %TARGET%
    echo Make sure you have the Russian localization subscribed in Steam Workshop.
    pause
    exit /b 1
)

echo Copying translation files to workshop directory...
for %%f in ("%REPO%\*.tyd") do copy /y "%%f" "%TARGET%\"
copy /y "%REPO%\TypeInfo.txt" "%TARGET%\"
copy /y "%REPO%\Thumbnail.png" "%TARGET%\"

echo Done!
pause
