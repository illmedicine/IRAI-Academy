# Push to GitHub Instructions

## ✅ Git has been installed! Now follow these steps:

### 1. Close and Reopen PowerShell/CMD
- Close your current PowerShell terminal
- Open a new PowerShell terminal as Administrator
- Navigate to your project folder:
```bash
cd c:/Users/godwi/OneDrive/Documents/irai
```

### 2. Verify Git Installation
```bash
git --version
```

### 3. Configure Git (first time only)
```bash
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
```

### 4. Initialize Repository and Push
```bash
git init
git add .
git commit -m "Initial commit: IRAI Founders Lab website with sidebar UI and class enrollment"
git remote add origin https://github.com/illmedicine/IRAI-Academy.git
git branch -M main
git push -u origin main
```

## 📁 Files Ready to Push:
- ✅ index.html - Complete website with sidebar navigation
- ✅ styles.css - Modern UI styling 
- ✅ script.js - Interactive functionality
- ✅ GITHUB_SETUP.md - Original setup instructions
- ✅ PUSH_TO_GITHUB.md - These instructions

## 🎯 Website Features:
- Sidebar navigation UI (app-like interface)
- Entrepreneurship-focused enrollment form
- 4-phase program structure
- Class scheduling and enrollment
- Fully responsive design
- Modern gradient backgrounds and animations

## 🔐 If Push Fails (Authentication):
1. Create GitHub Personal Access Token: https://github.com/settings/tokens
2. Use token as password when prompted
3. Or set up SSH keys: https://docs.github.com/en/authentication/connecting-to-github-with-ssh

## 📞 Alternative: Manual Upload
If Git commands still don't work, you can:
1. Go to https://github.com/illmedicine/IRAI-Academy
2. Click "Add file" → "Upload files"
3. Drag and drop all files from your irai folder
4. Commit changes directly on GitHub
