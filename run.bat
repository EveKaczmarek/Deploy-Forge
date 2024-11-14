rem Taken from lllyasviel's one-click package
@echo off

call environment.bat

set SYSTEM=%~dp0system
set DATA=%~dp0data
set WEBUI=%~dp0webui

cd "%WEBUI%"

set COMMANDLINE_ARGS=--opt-channelslast --xformers --ckpt-dir "%DATA%\checkpoints" --lora-dir "%DATA%\lora"

call webui-user.bat
