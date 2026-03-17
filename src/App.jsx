import { useState } from 'react'
import Navigation from './components/Navigation'
import HomePage from './pages/HomePage'
import WebDevelopmentPage from './pages/WebDevelopmentPage'
import MobileAppBuilderPage from './pages/MobileAppBuilderPage'
import BusinessBuilderPage from './pages/BusinessBuilderPage'

function App() {
  const [currentPage, setCurrentPage] = useState('home')

  const showCourse = (courseType) => {
    setCurrentPage(courseType)
    window.scrollTo(0, 0)
  }

  const showHome = () => {
    setCurrentPage('home')
    window.scrollTo(0, 0)
  }

  // Expose functions to global scope for external access if needed
  window.showCourse = showCourse
  window.showHome = showHome

  return (
    <div className="bg-dark text-light min-h-screen">
      <Navigation currentPage={currentPage} showCourse={showCourse} showHome={showHome} />
      
      {currentPage === 'home' && <HomePage showCourse={showCourse} />}
      {currentPage === 'web-development' && <WebDevelopmentPage showHome={showHome} />}
      {currentPage === 'mobile-app-builder' && <MobileAppBuilderPage showHome={showHome} />}
      {currentPage === 'business-builder' && <BusinessBuilderPage showHome={showHome} />}
    </div>
  )
}

export default App
