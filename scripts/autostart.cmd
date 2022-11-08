set SETUP_PATH=C:\users\WDAGUtilityAccount\Desktop\scripts\setups
rem we need a writeable location to launch MSIs it seems
copy /B /Y /V %SETUP_PATH%\* %TEMP%\
"%TEMP%\vscode.exe" /verysilent /suppressmsgboxes /MERGETASKS="!runcode,desktopicon,quicklaunchicon,addcontextmenufiles,addcontextmenufolders,addtopath"
"%TEMP%\7zip.exe" /S
"%TEMP%\notepad++.exe" /S
"%TEMP%\vcredist_x64.exe"  /q /norestart
"%TEMP%\vcredist_x64.exe" /passive /norestart
"%TEMP%\wireshark.exe" /S /desktopicon=yes
"%TEMP%\npcap.exe" /loopback_support=yes
@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin