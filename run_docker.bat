@ECHO OFF

Rem Get name of folder program is running in
set MYDIR=%~dp0
set MYDIR1=%MYDIR:~0,-1%

for %%f in (%MYDIR1%) do set myfolder=%%~nxf

echo Removing old container.
docker stop %myfolder%
docker rm %myfolder%

echo Running %myfolder% in new container.
docker run -p 8080:8080 --name=%myfolder% %myfolder%

PAUSE