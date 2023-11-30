@echo on
echo Welcome to the setup script!
pause
cls
echo You will be guided through the setup process. Please don't close this window.
pause
cls
echo Please install the zip program into the default path, otherwise the script won't work!
pause
cls
7z2201.exe
pause
cls
echo Extracting files...
mkdir Setup
"C:\Program Files (x86)\7-Zip\7z.exe" e Setup.7z -oSetup || "C:\Program Files\7-Zip\7z.exe" e Setup.7z -oSetup
cd Setup
pause
cls
echo Launching setup programs...
timeout /t 1 >nul
cls
goto Av
:Av
cls
echo Which antivirus do you want to install? (Default = None)
echo 1. AVG
echo 2. Avast
echo 3. Avira
echo 4. Bitdefender
set /p choice=Please enter an option:
if %choice% EQU 1 avg_antivirus_free_setup.exe && GOTO browser
if %choice% EQU 2 avast_free_antivirus_setup_online.exe && GOTO browser && GOTO browser
if %choice% EQU 3 avira_en_sptl1_368056797-1701228755__phpws-spotlight-release.exe && GOTO browser && GOTO browser && GOTO browser
if %choice% EQU 4 bitdefender_avfree.exe && GOTO browser
else GOTO browser
:browser
cls
echo Which browser do you want to install? (Default = Chrome)
echo 1. Chrome
echo 2. Firefox
echo 3. Brave
echo 4. Opera GX
echo 5. Skip
set /p choice=Please enter an option:
if %choice% EQU 1 ChromeSetup.exe && GOTO utilities
if %choice% EQU 2 Firefox Setup 120.0.exe && GOTO utilities
if %choice% EQU 3 BraveBrowserSetup-BRV030.exe && GOTO utilities
if %choice% EQU 4 OperaGXSetup.exe && GOTO utilities
if %choice% EQU 5 GOTO utilities
else ChromeSetup.exe && GOTO utilities
:utilities
cls
echo Which utility do you want to install? (Default = None)
echo 1. CPU-Z
echo 2. Sound Volume Hotkeys
echo 3. Notepad++
echo 4. WinAeroTweaker (zip format)
set /p choice=Please enter an option:
if %choice% EQU 1 CPUZSetup.exe
if %choice% EQU 2 SoundVolumeHotkeys.exe
if %choice% EQU 3 npp.8.6.Installer.exe
if %choice% EQU 4 winaerotweaker.zip
else && goto SocialMedia
:SocialMedia
cls
echo Which social media do you want to install? (Default = None).
echo 1. Skype
echo 2. Discord
echo 3. Zalo (Vietnamese)
echo 4. Zoom 
set /p choice=Please enter an option:
if %choice% EQU 1 Skype-8.109.0.209.exe
if %choice% EQU 2 DiscordSetup.exe
if %choice% EQU 3 ZaloSetup-23.8.4.exe
if %choice% EQU 4 ZoomInstallerFull.exe
else goto resa
pause
cls
:resa
echo Installation completed. Do you want to restart?
echo 1. Restart now.
echo 2. Restart later.
set /p res=Your choice:
if %res%=1 shutdown /r /t 1
if %res%=2 echo Goodbye! && timeout /t 3 >nul && exit
else cls && echo Invalid. && timeout /t 3 && goto resa