Function Download-File {
  Param (
    [string]$url,
    [string]$path
  )

  $start_time = Get-Date
  Write-Output "Downloading $($url)"
  $wc = New-Object System.Net.WebClient
  # used to trick sourceforge latest endpoints to get the latest x64 windows binary
  $wc.Headers['User-Agent'] = "Wget x64"
  Try {
    $wc.DownloadFile($url, $path)
  }
  Catch {
    throw $_
  }
  Write-Output "Time taken: $((Get-Date).Subtract($start_time).Seconds) second(s)"  
}

Try {
  Download-File -url "https://update.code.visualstudio.com/latest/win32-x64-user/stable" -path "$($PSScriptRoot)\scripts\setups\vscode.exe"
  Download-File -url "https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v8.4.6/npp.8.4.6.Installer.x64.exe" -path "$($PSScriptRoot)\scripts\setups\notepad++.exe"
  Download-File -url "https://www.7-zip.org/a/7z2107-x64.exe" -path "$($PSScriptRoot)\scripts\setups\7zip.exe"
  Download-File -url "https://download.sysinternals.com/files/SysinternalsSuite.zip" -path "$($PSScriptRoot)\scripts\setups\sysinternals.zip"
  Download-File -url "https://npcap.com/dist/npcap-1.60.exe" -path "$($PSScriptRoot)\scripts\setups\npcap.exe"
  Download-File -url "https://1.eu.dl.wireshark.org/win64/Wireshark-win64-latest.exe" -path "$($PSScriptRoot)\scripts\setups\wireshark.exe"
  Download-File -url "http://download.microsoft.com/download/3/2/2/3224B87F-CFA0-4E70-BDA3-3DE650EFEBA5/vcredist_x64.exe" -path "$($PSScriptRoot)\scripts\setups\vcredist_x64.exe"
}
Catch {
  $error[0] | Format-List * -force
}
