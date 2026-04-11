@echo off

set "TARGET=C:\Program Files (x86)\Steam\steamapps\workshop\content\362620\649847804"
set "REPO=%~dp0.."

if not exist "%TARGET%" goto notfound

echo Copying translation files to workshop directory...
xcopy /y "%REPO%\*.tyd" "%TARGET%\"
copy /y "%REPO%\TypeInfo.txt" "%TARGET%\"
copy /y "%REPO%\Thumbnail.png" "%TARGET%\"
echo Done!
pause
goto :eof

:notfound
echo Workshop directory not found at %TARGET%
echo Make sure you have the Russian localization subscribed in Steam Workshop.
pause
exit /b 1
