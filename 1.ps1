# --- Admin check ---
$isAdmin = ([Security.Principal.WindowsPrincipal] `
    [Security.Principal.WindowsIdentity]::GetCurrent()
).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)

if (-not $isAdmin) {
    Start-Process powershell `
        -ArgumentList "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" `
        -Verb RunAs
    exit
}

# --- Runs ONLY as admin ---
$path = Join-Path $env:TEMP "WindowsUpdate"

if (!(Test-Path $path)) {
    New-Item -ItemType Directory -Path $path -Force | Out-Null
}

Write-Host "Folder created at: $path"
