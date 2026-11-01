Write-Host "=======================================================" -ForegroundColor Cyan
Write-Host "  Starting PJF Holdings Local Preview Server" -ForegroundColor Green
Write-Host "=======================================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Website directory: preview\" -ForegroundColor Yellow
Write-Host "Local URL:         http://localhost:3000" -ForegroundColor Yellow
Write-Host ""
Start-Process "http://localhost:3000"
Write-Host "Server is running at http://localhost:3000. Press Ctrl+C to stop." -ForegroundColor White
Write-Host ""
python -m http.server 3000 --directory preview
