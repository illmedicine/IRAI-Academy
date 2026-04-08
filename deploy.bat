@echo off
REM IRAI Academy Complete Deployment Script for Windows
REM Builds, deploys, and commits all in one process

echo Starting IRAI Academy complete deployment...

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

REM Step 3: Commit and push changes
echo Step 3: Committing and pushing changes...
git add .
git commit -m "Auto-deployment: %date% %time%"
git push origin main
echo Changes committed and pushed!

echo Complete deployment finished successfully!
echo Site is live at: https://illyrobotics.github.io/IRAI-Academy/
pause
