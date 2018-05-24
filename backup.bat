rmdir /s /q "C:\Users\%username%\Documents\SOD_Backups\" mkdir "C:\Users\%username%\Documents\SOD_Backups"
TIMEOUT 2
if not exist "C:\Users\%username%\Documents\SOD_Backups\" mkdir "C:\Users\%username%\Documents\SOD_Backups\"
TIMEOUT 2
@echo off
echo d | xcopy "C:\Users\%username%\AppData\Local\Packages\Microsoft.Dayton_8wekyb3d8bbwe\SystemAppData" "C:\Users\%username%\Documents\SOD_Backups\" /O /X /E /H /K
echo Error levels
echo %errorlevel%
msg * "Backup complete, If you need the files for manual use they're located in Documents\SODbackups"
exit