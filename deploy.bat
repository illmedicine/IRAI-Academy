@echo off
REM IRAI Academy Deployment Script for Windows
REM Prevents dual process conflicts by running build and deploy sequentially

echo Starting IRAI Academy deployment...

REM Step 1: Build the project
echo Step 1: Building the project...
call npm run build
if %ERRORLEVEL% NEQ 0 (
    echo Build failed! Exiting...
    exit /b 1
)
echo Build completed successfully!

REM Step 2: Deploy to GitHub Pages
echo Step 2: Deploying to GitHub Pages...
call npx gh-pages -d dist
if %ERRORLEVEL% NEQ 0 (
    echo Deployment failed! Exiting...
    exit /b 1
)
echo Deployment completed successfully!

REM Step 3: Commit and push changes (if any)
echo Step 3: Checking for changes to commit...
git status --porcelain
if %ERRORLEVEL% EQU 0 (
    echo No changes to commit.
) else (
    echo Changes detected, committing and pushing...
    git add .
    git commit -m "Auto-deployment: %date% %time%"
    git push origin main
    echo Changes committed and pushed!
)

echo Deployment completed successfully!
echo Site is live at: https://illyrobotics.github.io/IRAI-Academy/
pause
