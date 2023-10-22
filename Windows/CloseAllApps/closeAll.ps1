$processes = Get-Process | Where-Object { $_.Name -ne "powershell" }

# Terminate each process
foreach ($process in $processes) {
    Stop-Process -Id $process.Id -Force
}

