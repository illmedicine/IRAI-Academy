#!/bin/bash

# IRAI Academy Deployment Script
# Prevents dual process conflicts by running build and deploy sequentially

echo "Starting IRAI Academy deployment..."

# Step 1: Build the project
echo "Step 1: Building the project..."
npm run build
if [ $? -ne 0 ]; then
    echo "Build failed! Exiting..."
    exit 1
fi
echo "Build completed successfully!"

# Step 2: Deploy to GitHub Pages
echo "Step 2: Deploying to GitHub Pages..."
npx gh-pages -d dist
if [ $? -ne 0 ]; then
    echo "Deployment failed! Exiting..."
    exit 1
fi
echo "Deployment completed successfully!"

# Step 3: Commit and push changes (if any)
echo "Step 3: Checking for changes to commit..."
if [[ -n $(git status --porcelain) ]]; then
    echo "Changes detected, committing and pushing..."
    git add .
    git commit -m "Auto-deployment: $(date '+%Y-%m-%d %H:%M:%S')"
    git push origin main
    echo "Changes committed and pushed!"
else
    echo "No changes to commit."
fi

echo "Deployment completed successfully! 
Site is live at: https://illyrobotics.github.io/IRAI-Academy/"
