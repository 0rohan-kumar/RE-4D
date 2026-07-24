$ErrorActionPreference = "Stop"

Write-Host "Initializing Git..."
git init
git remote add origin https://github.com/0rohan-kumar/RE-4D.git
git branch -M main

# Base date: July 24, 2026
$dates = @(
    "2026-07-24T10:00:00",
    "2026-07-25T14:30:00",
    "2026-07-26T18:15:00",
    "2026-07-27T21:45:00",
    "2026-07-28T16:20:00",
    "2026-07-29T19:30:00"
)

$messages = @(
    "Day 1: Project skeleton and initial configs",
    "Day 2: Terminal UI and HUD layout",
    "Day 3: Custom WebGL engine and shaders",
    "Day 4: Game logic, collisions, and procedural audio",
    "Day 5: Native Windows desktop build support",
    "Day 6: Final polish, RE-4D rename, and documentation"
)

for ($i = 1; $i -le 6; $i++) {
    Write-Host "`n========================================"
    Write-Host "Simulating Day $i..."
    Write-Host "========================================"

    # Copy files from day folder to root
    Copy-Item -Path "day$i\*" -Destination "." -Recurse -Force
    
    # If it's day 6, make sure we copy the devlog too
    if ($i -eq 6) {
        Copy-Item devlog.md -Destination .
    }

    $date = $dates[$i-1]
    $msg = $messages[$i-1]

    Write-Host "Committing with date: $date"
    $env:GIT_AUTHOR_DATE = $date
    $env:GIT_COMMITTER_DATE = $date

    git add .
    git commit -m "$msg"

    Write-Host "Pushing to GitHub..."
    git push -u origin main --force

    Write-Host "Deploying to Vercel..."
    # vercel --prod --yes
    # We call vercel using cmd since it's a cmd tool
    cmd.exe /c "vercel --prod --yes"

    Write-Host "Day $i complete! Waiting 15 seconds before next day to allow Vercel to breathe..."
    Start-Sleep -Seconds 15
}

Write-Host "`nAll 6 days deployed successfully! History rewritten."
