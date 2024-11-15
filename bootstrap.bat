@echo off
rem Taken from lllyasviel's one-click package
call environment.bat

set SYSTEM=%~dp0system
set DATA=%~dp0data
set WEBUI=%~dp0webui

echo Bootstraping Python environment...
echo Installing pip...

cd SYSTEM\python
%~f1python.exe get-pip.py
%~f1python.exe -m pip install virtualenv

echo Installing Forge WebUI...

git clone https://github.com/lllyasviel/stable-diffusion-webui-forge "%WEBUI%"

echo Installing extensions...
git clone https://github.com/DominikDoom/a1111-sd-webui-tagcomplete.git "%WEBUI%\extensions\a1111-sd-webui-tagcomplete"
git clone https://github.com/Bing-su/adetailer.git "%WEBUI%\extensions\adetailer"
git clone https://github.com/DenOfEquity/forge2_cleaner.git "%WEBUI%\extensions\forge2_cleaner"
git clone https://github.com/BlafKing/sd-civitai-browser-plus.git "%WEBUI%\extensions\sd-civitai-browser-plus"
git clone https://github.com/Haoming02/sd-forge-couple "%WEBUI%\extensions\sd-forge-couple"
git clone https://github.com/muerrilla/sd-webui-detail-daemon.git "%WEBUI%\extensions\sd-webui-detail-daemon"
git clone https://github.com/w-e-w/sd-webui-hires-fix-tweaks.git "%WEBUI%\extensions\sd-webui-hires-fix-tweaks"
git clone https://github.com/zanllp/sd-webui-infinite-image-browsing.git "%WEBUI%\extensions\sd-webui-infinite-image-browsing"
git clone https://github.com/w-e-w/sd-webui-input-accordion-highlight.git "%WEBUI%\extensions\sd-webui-input-accordion-highlight"
git clone https://github.com/hako-mikan/sd-webui-lora-block-weight.git "%WEBUI%\extensions\sd-webui-lora-block-weight"
git clone https://github.com/hako-mikan/sd-webui-negpip.git "%WEBUI%\extensions\sd-webui-negpip"
git clone https://github.com/bluelovers/sd-webui-pnginfo-beautify.git "%WEBUI%\extensions\sd-webui-pnginfo-beautify"
git clone https://github.com/w-e-w/sdwebui-close-confirmation-dialogue.git "%WEBUI%\extensions\dwebui-close-confirmation-dialogue"
git clone https://github.com/EveKaczmarek/stable-diffusion-webui-wd14-tagger.git "%WEBUI%\extensions\stable-diffusion-webui-wd14-tagger"

echo Applying settings...
copy "%DATA%\basic-settings\config.json" "%WEBUI%\"
del "%WEBUI%\styles_integrated.csv"
copy "%DATA%\basic-settings\styles_pony.csv" "%WEBUI%\styles_integrated.csv"
del "%WEBUI%\webui-user.bat"
copy "%DATA%\basic-settings\webui-user.bat" "%WEBUI%\webui-user.bat"

echo Done.
pause