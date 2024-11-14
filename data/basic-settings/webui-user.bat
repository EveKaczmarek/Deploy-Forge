@echo off

set PYTHON=
set GIT=
set VENV_DIR=%VENV%
set COMMANDLINE_ARGS=--opt-channelslast --xformers --ckpt-dir "%DATA%\checkpoints" --lora-dir "%DATA%\lora"
set CUDA_MODULE_LOADING=LAZY
set SAFETENSORS_FAST_GPU=1

call webui.bat