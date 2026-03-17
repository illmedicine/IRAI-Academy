# IRAI Academy - React Version

A modern, AI-driven learning platform for developers. Built with React, Vite, and Tailwind CSS.

## 🚀 Quick Start

### Prerequisites
- Node.js 16+ and npm

### Installation

```bash
# Install dependencies
npm install
```

### Development

```bash
# Start the development server
npm run dev
```

The app will be available at `http://localhost:5173`

### Production Build

```bash
# Create an optimized production build
npm run build

# Preview the production build
npm run preview
```

## 📁 Project Structure

```
src/
├── components/           # Reusable components
│   ├── Navigation.jsx    # Navigation bar
│   ├── CourseCard.jsx    # Course card on homepage
│   ├── ProjectCard.jsx   # Project card in course pages
│   └── PhaseCard.jsx     # Learning phase card
├── pages/               # Page components
│   ├── HomePage.jsx     # Landing page with course selection
│   ├── WebDevelopmentPage.jsx
│   ├── MobileAppBuilderPage.jsx
│   └── BusinessBuilderPage.jsx
├── App.jsx              # Main app component with routing
├── main.jsx             # Entry point
└── index.css            # Global styles with Tailwind
```

## 🎨 Styling

The project uses **Tailwind CSS** for styling with custom configuration:

- Color scheme: Dark theme with indigo/purple accents
- Fonts: Inter and Space Grotesk from Google Fonts
- Responsive design with mobile-first approach

## 🔄 Navigation

- **Home Page**: Display course selection with statistics
- **Course Pages**: Detailed course information with:
  - Hero section with statistics
  - Projects you'll build
  - 12-week learning timeline
  - Call-to-action to Discord community

## 📦 Tech Stack

- **React 18**: UI library
- **Vite**: Fast build tool and dev server
- **Tailwind CSS**: Utility-first CSS framework
- **PostCSS**: CSS processing
- **Autoprefixer**: Browser compatibility

## 🚢 Deployment

The build output is optimized and ready for deployment to any static hosting platform:

```bash
npm run build
# Output is in the `dist/` directory
```

Can be deployed to:
- Vercel
- Netlify
- GitHub Pages
- Any static hosting service

## 📝 Notes

- All content from the original HTML version has been preserved
- Component-based architecture makes it easy to add features
- Responsive design works on desktop, tablet, and mobile
- Tailwind CSS allows for quick styling adjustments

## 🔗 Links

- Discord: https://discord.gg/badyP2uTXP
- GitHub: https://github.com/illmedicine/IRAI-Academy

## 📄 License

Part of IRAI Academy - Powered by Illy Robotic Instruments

