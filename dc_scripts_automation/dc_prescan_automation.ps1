# Script paths
$scripts = @(
    "c:\GRC\GRC - AD User Information.ps1",
    "path\to\script2.ps1",
    "path\to\script3.ps1",
    "path\to\script4.ps1",
    "path\to\script5.ps1"
)

# Execute each script
foreach ($script in $scripts) {
    Write-Host "Running $script..."
    & $script
    if ($LASTEXITCODE -ne 0) {
        Write-Host "Script $script failed with exit code $LASTEXITCODE. Stopping execution."
        exit $LASTEXITCODE
    }
    Write-Host "$script completed successfully."
}

Write-Host "All scripts executed successfully."
