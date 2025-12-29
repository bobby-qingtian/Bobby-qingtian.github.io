# Portfolio Website

Personal portfolio website deployed on GitHub Pages.

## 🚀 Deployment Methods

### Method 1: Using Cursor/VS Code Task (Recommended)
1. Press `Ctrl+Shift+P` (or `Cmd+Shift+P` on Mac)
2. Type "Tasks: Run Task"
3. Select "Deploy to GitHub"
4. Follow the prompts

### Method 2: Using PowerShell Script
Run the deployment script directly:
```powershell
.\deploy.ps1
```

### Method 3: Manual Git Commands
```powershell
git add .
git commit -m "Your commit message"
git push origin main
```

### Method 4: Automatic Deployment via GitHub Actions
The repository includes a GitHub Actions workflow (`.github/workflows/deploy.yml`) that automatically deploys your site to GitHub Pages whenever you push to the `main` branch.

## 📝 Setup Instructions

1. **Enable GitHub Pages:**
   - Go to your repository settings on GitHub
   - Navigate to "Pages" in the left sidebar
   - Under "Source", select "GitHub Actions"

2. **First-time setup:**
   - Make sure you have Git configured:
     ```powershell
     git config --global user.name "Your Name"
     git config --global user.email "your.email@example.com"
     ```

## 🌐 Live Site
Your portfolio will be available at: https://bobby-qingtian.github.io

## 📁 Project Structure
```
.
├── Index.html          # Home page
├── Journey.html        # Journey/timeline page
├── Works.html          # Portfolio/projects page
├── Contacts.html       # Contact page
├── styles.css          # Main stylesheet
├── deploy.ps1          # Deployment script
└── .github/
    └── workflows/
        └── deploy.yml  # GitHub Actions workflow
```

## 🔄 Workflow
1. Make changes to your HTML/CSS files
2. Use one of the deployment methods above
3. Changes will be live on GitHub Pages within a few minutes

