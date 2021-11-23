@ECHO OFF

Rem Get name of folder program is running in
set MYDIR=%~dp0
set MYDIR1=%MYDIR:~0,-1%

for %%f in (%MYDIR1%) do set myfolder=%%~nxf

echo Building docker image for %myfolder%.
docker build --tag %myfolder% .

PAUSE