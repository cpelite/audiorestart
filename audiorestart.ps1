
$con = Read-Host "Do you want to restart Audio services? [Y, N]"
if ($con -eq 'Y') {
    Restart-Service -Force -Name AudioEndpointBuilder
    Restart-Service -Force -Name Audiosrv
    Write-Output "Audio services have been restarted."
} else {
    Write-Output "Exiting!"
}