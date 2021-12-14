cd %HOMEPATH%\AppData\Local\Android\Sdk\platform-tools

echo off
cls

echo Goto adb / Draadloze foutopsporing
echo.

echo Apparaat koppelen
echo.

adb pair
echo.

set /p koppel-ip="Enter koppel ip-adres:poort "

adb pair %koppel-ip%

echo.

set /p connect-ip="Enter connect ip-adres:poort "

adb connect %connect-ip%

pause
