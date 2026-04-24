import React from 'react'

function App() {
  return (
    <div style={{ 
      fontFamily: 'Arial, sans-serif', 
      textAlign: 'center', 
      marginTop: '50px',
      padding: '20px',
      backgroundColor: '#f0f2f5',
      minHeight: '100vh'
    }}>
      <header style={{ 
        backgroundColor: '#0078d4', 
        padding: '20px', 
        color: 'white',
        borderRadius: '8px',
        boxShadow: '0 4px 6px rgba(0,0,0,0.1)'
      }}>
        <h1>Azure Deployment Demo</h1>
        <p>Tarea 3 - New Technologies</p>
      </header>
      <main style={{ marginTop: '30px' }}>
        <section style={{ 
          backgroundColor: 'white', 
          padding: '20px', 
          margin: '10px auto', 
          maxWidth: '600px',
          borderRadius: '8px',
          boxShadow: '0 2px 4px rgba(0,0,0,0.05)'
        }}>
          <h2>Static Web App</h2>
          <p>Esta aplicación está diseñada para ser desplegada en Azure Static Web Apps.</p>
        </section>
        <section style={{ 
          backgroundColor: 'white', 
          padding: '20px', 
          margin: '10px auto', 
          maxWidth: '600px',
          borderRadius: '8px',
          boxShadow: '0 2px 4px rgba(0,0,0,0.05)'
        }}>
          <h2>App Service</h2>
          <p>Esta misma aplicación puede ser servida desde un contenedor en Azure App Service.</p>
        </section>
      </main>
      <footer style={{ marginTop: '50px', color: '#666' }}>
        <p>Implementado con Terraform y GitHub Actions</p>
      </footer>
    </div>
  )
}

export default App
