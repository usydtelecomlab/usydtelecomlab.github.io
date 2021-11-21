@echo off
echo All projects are going to be updated!
echo.
echo.
set bat_path=%~dp0
cd /d %bat_path%
for /f "tokens=*" %%i in ('dir /ad  /b ') do (
    cd %%i 
    echo ------%%i------
    git pull
    cd ..
)
echo.
echo.
echo All projects are updated!
pause