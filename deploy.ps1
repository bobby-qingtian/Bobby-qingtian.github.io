# Deployment script for Portfolio
# This script automates the git push process

Write-Host "🚀 Deploying Portfolio to GitHub..." -ForegroundColor Cyan

# Check if git is initialized
if (-not (Test-Path ".git")) {
    Write-Host "❌ Git repository not found. Initializing..." -ForegroundColor Yellow
    git init
}

# Check for changes
$status = git status --porcelain
if ([string]::IsNullOrWhiteSpace($status)) {
    Write-Host "ℹ️  No changes to commit." -ForegroundColor Yellow
} else {
    Write-Host "📝 Staging changes..." -ForegroundColor Cyan
    git add .
    
    $commitMessage = Read-Host "Enter commit message (or press Enter for default)"
    if ([string]::IsNullOrWhiteSpace($commitMessage)) {
        $commitMessage = "Update portfolio: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
    }
    
    git commit -m $commitMessage
    Write-Host "✅ Changes committed." -ForegroundColor Green
}

# Check if remote exists
$remote = git remote get-url origin 2>$null
if ($LASTEXITCODE -ne 0) {
    Write-Host "🔗 Adding remote repository..." -ForegroundColor Cyan
    git remote add origin https://github.com/bobby-qingtian/Bobby-qingtian.github.io.git
}

# Ensure we're on main branch
$currentBranch = git branch --show-current
if ($currentBranch -ne "main") {
    Write-Host "🔄 Switching to main branch..." -ForegroundColor Cyan
    git branch -M main
}

# Push to GitHub
Write-Host "⬆️  Pushing to GitHub..." -ForegroundColor Cyan
git push -u origin main

if ($LASTEXITCODE -eq 0) {
    Write-Host "✅ Successfully deployed to GitHub!" -ForegroundColor Green
    Write-Host "🌐 Your site will be available at: https://bobby-qingtian.github.io" -ForegroundColor Cyan
} else {
    Write-Host "❌ Deployment failed. Please check your git credentials." -ForegroundColor Red
}

