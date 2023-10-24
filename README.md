# Glipper Scripts

- [Glipper Scripts](#glipper-scripts)
    - [Disclaimer](#disclaimer)
  - [Payloads](#payloads)
  - [Payloads Explanation](#payloads-explanation)
  - [Extras](#extras)
  - [Zenin Software License](#zenin-software-license)



### Disclaimer


<div align=center>
  <img src="/main/img/logo-repository-2_0.gif" width="600" /><br>
  <img src="/main/img/DISCLAIMER.png" width="600" />
</div>

<details>
<summary>Show Disclaimer Raw</summary>

> [!IMPORTANT]
> As a user of this code, it is essential to be fully aware and in compliance with the following terms and conditions. By downloading and utilizing this code, you acknowledge and accept the responsibility to:
>
> Use this code exclusively for lawful and ethical purposes, ensuring all actions align with legal regulations. Any employment of this code for illegal, unethical, or malicious activities is strictly prohibited. 
> The author of this code does not support, endorse, or bear any responsibility for actions that breach the law or inflict harm upon others. Please download and employ this code responsibly, adhering to ethical standards and legal mandates. Non-compliance may result in legal consequences.
>
> These scripts are provided 'as is' and without warranty or liability. The use of these scripts should be done in a controlled environment, with full awareness of the potential risks involved. The author of these scripts disclaims any responsibility for any adverse consequences that may arise from their use.
>
> By using this code, you acknowledge that you have read this disclaimer and understand its contents.ims any responsibility for any adverse consequences that may arise from their use.

</details><br>


## Payloads

|System|Category|Name|
|:--:|:--:|:--:|
|![Windows](https://img.shields.io/badge/Windows-0078D6?style=for-the-badge&logo=windows&logoColor=white)|Good USB|[Increment Windows Privacy](https://github.com/Zenin0/Glipper_Scripts/tree/main/Windows/GoodUSB/Privacy_Windows)
|![Windows](https://img.shields.io/badge/Windows-0078D6?style=for-the-badge&logo=windows&logoColor=white)|Good USB|[Activate Windows](https://github.com/Zenin0/Glipper_Scripts/tree/main/Windows/GoodUSB/Activate_Windows)
|![Windows](https://img.shields.io/badge/Windows-0078D6?style=for-the-badge&logo=windows&logoColor=white)|Good USB|[Remove Windows Bloatware](https://github.com/Zenin0/Glipper_Scripts/tree/main/Windows/GoodUSB/Bloatware_removal)
|![Windows](https://img.shields.io/badge/Windows-0078D6?style=for-the-badge&logo=windows&logoColor=white)|Exfiltrate|[Exfiltrate WiFi Windows Passwords](https://github.com/Zenin0/Glipper_Scripts/tree/main/Windows/Exfilaration/WWifiPasswords)
|![Windows](https://img.shields.io/badge/Windows-0078D6?style=for-the-badge&logo=windows&logoColor=white)|Exfiltrate|[Exfiltrate Browser Data](https://github.com/Zenin0/Glipper_Scripts/tree/main/Windows/Exfilaration/BrowserData)
|![Windows](https://img.shields.io/badge/Windows-0078D6?style=for-the-badge&logo=windows&logoColor=white)|Exfiltrate|[Exfiltrate Browser Cookies](https://github.com/Zenin0/Glipper_Scripts/tree/main/Windows/Exfilaration/ExportCookiesBrowsers)
|![Windows](https://img.shields.io/badge/Windows-0078D6?style=for-the-badge&logo=windows&logoColor=white)|Exfiltrate|[Exfiltrate Browser Passwords](https://github.com/Zenin0/Glipper_Scripts/tree/main/Windows/Exfilaration/SendPasswords)
|![Windows](https://img.shields.io/badge/Windows-0078D6?style=for-the-badge&logo=windows&logoColor=white)|Execution|[Close All Apps](https://github.com/Zenin0/Glipper_Scripts/tree/main/Windows/Executions/CloseAllApps)
|![Windows](https://img.shields.io/badge/Windows-0078D6?style=for-the-badge&logo=windows&logoColor=white)|Execution|[Change the password of the Windows user](https://github.com/Zenin0/Glipper_Scripts/tree/main/Windows/Executions/Change_the_password_of_the_windows_user)
|![Windows](https://img.shields.io/badge/Windows-0078D6?style=for-the-badge&logo=windows&logoColor=white)|Execution|[Delete 32](https://github.com/Zenin0/Glipper_Scripts/tree/main/Windows/Exfilaration/Delete32)
|![Windows](https://img.shields.io/badge/Windows-0078D6?style=for-the-badge&logo=windows&logoColor=white)|Execution|[Delete browsers](https://github.com/Zenin0/Glipper_Scripts/tree/main/Windows/Executions/SendPasswords)
|![Windows](https://img.shields.io/badge/Windows-0078D6?style=for-the-badge&logo=windows&logoColor=white)|Execution|[Disable Defender](https://github.com/Zenin0/Glipper_Scripts/tree/main/Windows/Executions/DisableDefender)
|![Windows](https://img.shields.io/badge/Windows-0078D6?style=for-the-badge&logo=windows&logoColor=white)|Execution|[Disable Firewall](https://github.com/Zenin0/Glipper_Scripts/tree/main/Windows/Executions/DisableFirewall)
|![Windows](https://img.shields.io/badge/Windows-0078D6?style=for-the-badge&logo=windows&logoColor=white)|Execution|[Invisible Download exe](https://github.com/Zenin0/Glipper_Scripts/tree/main/Windows/Executions/Invisible_DownExec)
|![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)|Credentials|[Exfiltrate Email And Password By Phising](https://github.com/Zenin0/Glipper_Scripts/tree/main/Linux/Exfiltration/ExfiltrateEmailAndPasswordByPhising)
|![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)|Credentials|[Exfiltrate Sudo Password By Phishing](https://github.com/Zenin0/Glipper_Scripts/tree/main/Linux/Exfiltration/ExfiltrateSudoPasswordByPhising)
|![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)|Execution|[Encrypt All Documents](https://github.com/Zenin0/Glipper_Scripts/tree/main/Linux/Execution/EncryptAllDocuments_Linux)



## Payloads Explanation

```ruby
REPEAT - Repeat a series of commands or key presses
DELAY - Delay of X ms
DELAYRANDOM - Delay of random ms
DEFAULTDELAY - Defines a default delay that is applied between each instruction
SLEEP - Delay of X s
MOUSE - Nouse movements and clicks
APP - Focus on a specific application
REM - Comments
STRINGLN - Written
DEFINE - A new Var
KEYS - (ENTER, CTRL-ALT, CTRL-SHIFT, ALT-F4, ALT-ESC...)
GUI - Win/Command, Special Key for OS
```

## Extras

- ### [Unleashed Firmware](https://github.com/DarkFlippers/unleashed-firmware)
  This software is for experimental purposes only and is not meant for any illegal activity/purposes.
  Also, this software is made without any support from Flipper Devices and is in no way related to the official devs.

<p align="center">
  <a href="https://github.com/UNC0V3R3D/Flipper_Zero-BadUsb">
    <img src="https://user-images.githubusercontent.com/10697207/186202043-26947e28-b1cc-459a-8f20-ffcc7fc0c71c.png" alt="UNC0V3R3D Image" style="width: 40em;">
  </a>
</p>


- ### [Flipper Bad USB Payloads](https://github.com/aleff-github/my-flipper-shits)

  Some script don't work very well, so making them by myself

<p align="center">
  <a href="https://github.com/UNC0V3R3D/Flipper_Zero-BadUsb">
    <img src="https://raw.githubusercontent.com/aleff-github/my-flipper-shits/main/img/logo-repository-2_0.gif" alt="UNC0V3R3D Image" style="width: 40em;">
  </a>
</p>

- ## [UNC0V3R3D](https://github.com/UNC0V3R3D/Flipper_Zero-BadUsb)


<p align="center">
  <a href="https://github.com/UNC0V3R3D/Flipper_Zero-BadUsb">
    <img src="https://github.com/UNC0V3R3D/ressources/raw/main/badusbpicnew.png" alt="UNC0V3R3D Image" style="width: 40em;">
  </a>
</p>

- ## [UberGuidoZ](https://github.com/UberGuidoZ/Flipper-IRDB/tree/main)
  
  A reposotoru of Flipper-IRDB

<p align="center">
  <a href="https://github.com/UberGuidoZ/Flipper-IRDB/tree/main">
    <img src="https://user-images.githubusercontent.com/71837281/262451680-45975652-d443-4fc1-9fdf-e931ffd20c5d.jpg" alt="UberGuidoZ Image" style="width: 40em;">
  </a>
</p>




## Zenin Software License

[![Zenin Software License](https://img.shields.io/badge/license-Zenin%20Software%20License-red.svg)](https://github.com/Zenin0/Glipper_Scripts/blob/main/LICENSE)


