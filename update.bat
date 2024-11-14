rem Taken from lllyasviel's one-click package
@echo off

call environment.bat

git reset --hard
git pull

git -C "%~dp0webui" pull 2>NUL
if %ERRORLEVEL% == 0 goto :done

git -C "%~dp0webui" reset --hard
git -C "%~dp0webui" pull

:done
pause
