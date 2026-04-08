#!/bin/bash

# IRAI Academy Complete Deployment Script
# Builds, deploys, and commits all in one process

echo "Starting IRAI Academy complete deployment..."

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

# Step 3: Commit and push changes
echo "Step 3: Committing and pushing changes..."
git add .
git commit -m "Auto-deployment: $(date '+%Y-%m-%d %H:%M:%S')"
git push origin main
echo "Changes committed and pushed!"

echo "Complete deployment finished successfully!
Site is live at: https://illyrobotics.github.io/IRAI-Academy/"
