Clear-Host
$text = "RTYUW"

for ($i = 0; $i -lt 3; $i++) {
    Clear-Host
    foreach ($char in $text.ToCharArray()) {
        Write-Host -NoNewline $char
        Start-Sleep -Milliseconds 150
    }
    Start-Sleep -Milliseconds 400
}

echo "RTYUW echo executed"
