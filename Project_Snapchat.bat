@shift /0
@echo off
SETLOCAL EnableDelayedExpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do     rem"') do (
  set "DEL=%%a"
)
mode con:cols=100 lines=32
:menu
cls
title Project_Snapchat [CLI] - Version 1.0.0
echo.
call :colorEcho c "Welcome to Project_Snapchat [1.0.0]"
echo.
echo.
echo                  .-////-.               
echo              `+hNMMMMMMMMNh/`           
echo             +NMMMMMMMMMMMMMMN/          
echo            sMMMMMMMMMMMMMMMMMMs         
echo           -MMMMMMMMMMMMMMMMMMMM.        
echo           /MMMMMMMMMMMMMMMMMMMM:        
echo           :MMMMMMMMMMMMMMMMMMMM:        
echo       `:-`-MMMMMMMMMMMMMMMMMMMM-`-:`    
echo      `mMMMMMMMMMMMMMMMMMMMMMMMMMMMMm`   
echo       `:+yNMMMMMMMMMMMMMMMMMMMMNy+:`    
echo           sMMMMMMMMMMMMMMMMMMMMs        
echo          oMMMMMMMMMMMMMMMMMMMMMMo       
echo        :dMMMMMMMMMMMMMMMMMMMMMMMMd:     
echo    .:omMMMMMMMMMMMMMMMMMMMMMMMMMMMMms:. 
echo   hMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMh
echo    .:+omMMMMMMMMMMMMMMMMMMMMMMMMMMNo+:` 
echo        :hhssyhNMMMMMMMMMMMMMdysyyh/     
echo                :yNMMMMMMNh/`            
echo                   .://:-  
echo.
call :colorEcho 6 "-----------------------------------------"
echo.
echo             PROJECT_SNAPCHAT
call :colorEcho 6 "-----------------------------------------"
echo.
echo 1 - Strart
echo 2 - Accept
echo 3 - QuickAdd
echo 4 - Add Everyone
echo 5 - AddStory
call :colorEcho 6 "-----------------------------------------"
echo.
set /p M=Type 1-5 Then press enter:

if %M%==1 goto :start
if %M%==2 goto :AcceptMenu
if %M%==3 goto :QuickAddMenu
if %M%==4 goto :AddEveryoneMenu
if %M%==5 goto :StoryMenu

:start
cls
echo.
echo                  .-////-.               
echo              `+hNMMMMMMMMNh/`           
echo             +NMMMMMMMMMMMMMMN/          
echo            sMMMMMMMMMMMMMMMMMMs         
echo           -MMMMMMMMMMMMMMMMMMMM.        
echo           /MMMMMMMMMMMMMMMMMMMM:        
echo           :MMMMMMMMMMMMMMMMMMMM:        
echo       `:-`-MMMMMMMMMMMMMMMMMMMM-`-:`    
echo      `mMMMMMMMMMMMMMMMMMMMMMMMMMMMMm`   
echo       `:+yNMMMMMMMMMMMMMMMMMMMMNy+:`    
echo           sMMMMMMMMMMMMMMMMMMMMs        
echo          oMMMMMMMMMMMMMMMMMMMMMMo       
echo        :dMMMMMMMMMMMMMMMMMMMMMMMMd:     
echo    .:omMMMMMMMMMMMMMMMMMMMMMMMMMMMMms:. 
echo   hMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMh
echo    .:+omMMMMMMMMMMMMMMMMMMMMMMMMMMNo+:` 
echo        :hhssyhNMMMMMMMMMMMMMdysyyh/     
echo                :yNMMMMMMNh/`            
echo                   .://:-  
echo.
call :colorEcho 6 "-----------------------------------------"
echo.
echo                   START
call :colorEcho 6 "-----------------------------------------"
echo.
echo 1 - Appium
echo 2 - Open Settings
echo 3 - Available Devices
echo 4 - Open Phone (android studio)
echo 5 - Install Snapchat
echo 6 - Back
call :colorEcho 6 "-----------------------------------------"
echo.
set /p M=Type 1-5 Then press enter:

if %M%==1 goto :Appium
if %M%==2 goto :Open Settings
if %M%==3 goto :Devices
if %M%==4 goto :OpenPhone
if %M%==5 goto :InstallSnap
if %M%==6 goto :menu

:Appium
start cmd /C appium
cls
goto :menu

:Open Settings
start Settings.json
cls
goto :menu

:OpenPhone
start .\APK\openPhone.bat
cls
pause
goto :menu

:Devices
adb devices
pause
cls
goto :menu

:InstallSnap
adb install APK\com.snapchat.android.apk
pause
cls
goto :menu

:AcceptMenu
title Project_Snapchat [CLI] - Version 1.0.0
call :colorEcho 6 "-----------------------------------------"
echo.
echo                   Accept
call :colorEcho 6 "-----------------------------------------"
echo.
echo 1 - Accept
echo 2 - Accept + Messages
echo 3 - Back
call :colorEcho 6 "-----------------------------------------"
echo.
set /p M=Type 1-3 Then press enter:

if %M%==1 goto :Accept
if %M%==2 goto :Acceptmessage
if %M%==3 goto :menu


:Accept
start cmd /C robot -d Output Application/Accept.robot
cls
goto :menu

:Acceptmessage
start cmd /C robot -d Output Application/Accept+message.robot
cls
goto :menu

:AddStory
start cmd /C robot -d Output Application/StoryCamera.robot
cls
goto :menu

:QuickAddMenu
title Project_Snapchat [CLI] - Version 1.0.0
call :colorEcho 6 "-----------------------------------------"
echo.
echo                   QuickAdd
call :colorEcho 6 "-----------------------------------------"
echo.
echo 1 - QuickAdd
echo 2 - QuickAdd + Messages
echo 3 - Back
call :colorEcho 6 "-----------------------------------------"
echo.
set /p M=Type 1-3 Then press enter:

if %M%==1 goto :QuickAdd
if %M%==2 goto :QuickAddmessage
if %M%==3 goto :menu

:QuickAdd
start cmd /C robot -d Output Application/QuickAdd.robot
cls
goto :menu

:QuickAddmessage
start cmd /C robot -d Output Application/QuickAdd+Message.robot
cls
goto :menu

:AddEveryoneMenu
title Project_Snapchat [CLI] - Version 1.0.0
call :colorEcho 6 "-----------------------------------------"
echo.
echo             Add Everyone
call :colorEcho 6 "-----------------------------------------"
echo.
echo 1 - AddEveryone
echo 2 - AddEveryone + Messages
echo 3 - Back
call :colorEcho 6 "-----------------------------------------"
echo.
set /p M=Type 1-3 Then press enter:

if %M%==1 goto :AddEveryone
if %M%==2 goto :AddEveryonemessage
if %M%==3 goto :menu

:AddEveryone
start cmd /C robot -d Output Application/AddEveryone.robot
cls
goto :menu

:AddEveryonemessage
start cmd /C robot -d Output Application/AddEveryone+message.robot
cls
goto :menu

:StoryMenu
title Project_Snapchat [CLI] - Version 1.0.0
call :colorEcho 6 "-----------------------------------------"
echo.
echo             Add Story
call :colorEcho 6 "-----------------------------------------"
echo.
echo 1 - Snaps	(Coming Soon)
echo 2 - Camera Roll
echo 3 - Back
call :colorEcho 6 "-----------------------------------------"
echo.
set /p M=Type 1-3 Then press enter:

if %M%==1 goto :Snaps
if %M%==2 goto :CameraRoll
if %M%==3 goto :menu

:Snaps
cls
goto :menu

:CameraRoll
start cmd /C robot -d Output Application/StoryCamera.robot
cls
goto :menu

:colorEcho
echo off
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1i