rem Taken from lllyasviel's one-click package
@echo off

call environment.bat

set SYSTEM=%~dp0system
set DATA=%~dp0data
set WEBUI=%~dp0webui
set VENV=%~dp0venv

cd "%WEBUI%"

call webui-user.bat
