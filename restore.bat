@echo off
rmdir /s /q "C:\Users\%username%\AppData\Local\Packages\Microsoft.Dayton_8wekyb3d8bbwe\SystemAppData"
TIMEOUT 5
echo d | xcopy "C:\Users\%username%\Documents\SOD_Backups" "C:\Users\%username%\AppData\Local\Packages\Microsoft.Dayton_8wekyb3d8bbwe\SystemAppData" /O /X /E /H /K
echo Error levels
echo %errorlevel%
msg * "Restoration completed., Thanks for using SOD 1 click restore by KILLJOY"
exit