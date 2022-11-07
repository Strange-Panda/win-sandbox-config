# win-sandbox-config
 a simple Sandbox-Config

# Windows Sandbox Configuration

This is my configuration for a Windows Sandbox with some basic tools installed. Mostly based on https://github.com/FireFart/sandbox

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

