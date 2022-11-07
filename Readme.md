# win-sandbox-config
 a simple Sandbox-Config

Windows Sandbox is an isolated, temporary desktop environment where you can run untrusted software without the fear of lasting impact to your PC.

Any software installed in Windows Sandbox stays only in the sandbox and cannot affect your host. Once Windows Sandbox is closed, all the software with all its files and state are permanently deleted.

# Windows Sandbox Configuration

This is my configuration for a Windows Sandbox with some basic tools installed.

# Activate Windows Sandbox

## Enable Windows Sandbox with PowerShell:
Open PowerShell as Administrator.

Type or copy-paste the following command:

Enable-WindowsOptionalFeature -FeatureName "Containers-DisposableClientVM" -All -Online

When prompted to restart the computer, type Y, and press Enter.
The change can be undone with the following command:

Disable-WindowsOptionalFeature -FeatureName "Containers-DisposableClientVM" -Online


## Enable Windows Sandbox with DISM:

Open an elevated command prompt.
Type or copy-paste the following command:

dism /online /Enable-Feature /FeatureName:"Containers-DisposableClientVM" -All

Restart the computer when prompted.

To disable the Sandbox feature, use this command:
dism /online /Disable-Feature /FeatureName:"Containers-DisposableClientVM"

# WSB-Files

For configuration options in the `.wsb` file please read [https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-sandbox/windows-sandbox-configure-using-wsb-file](https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-sandbox/windows-sandbox-configure-using-wsb-file).

## Software installed

the following software is currently installed

- Visual Studio Code
- Notepad++
- 7-zip
- Sysinternals Suite
- Wireshark
- Npcap (does not support silent install, you have to click next next next)
- Chocolatey

## Additional info

- nothing here

## Usage

First download all files by executing `.\downloadFiles.ps1` inside powershell. This will download all files needed. Run `.\createSandboxConfig.ps1` once to create the `.wsb` file. This is needed because relative paths are currently not supported by Windows Sandbox.

Then simply doubleclick the `sandbox.wsb` file to launch the sandbox. This will install all needed software on start.

