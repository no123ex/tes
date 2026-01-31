powershell -ExecutionPolicy Bypass -Command ^
"$url='https://example.com/script.ps1'; ^
$path=\"$env:TEMP\script.ps1\"; ^
Invoke-WebRequest $url -UseBasicParsing -OutFile $path; ^
& $path"
