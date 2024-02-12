REM THIS INITIALIZATION SCRIPT WAS CREATED TO BE CALLED ONLY ONCE PER PROJECT
REM mod id should be without spaces or capital characters
set MOD_ID=mymod
set MOD_PATH=D:/Games/RainWorld/StreamingAssets/mods
set MOD_SRC=src
set MOD_BUILD=build

mkdir %MOD_SRC%
mkdir %MOD_BUILD%
mkdir %MOD_ID%
mkdir %MOD_ID%\plugins
mkdir %MOD_ID%\

REM Custom directories are not handled yet
echo. > commands.bat
echo set MOD_ID=%MOD_ID% > commands.bat
echo set MOD_PATH=%MOD_PATH% >> commands.bat
echo set MOD_SRC=%MOD_SRC%   >> commands.bat
echo: >> commands.bat
echo REM Place your commands that will execute after build before this line >> commands.bat
echo xcopy %MOD_ID% MOD_PATH/%MOD_ID% /q /i /s /Y  >> commands.bat
