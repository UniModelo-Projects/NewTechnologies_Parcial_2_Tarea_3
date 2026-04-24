# Azure Demo Application

Esta es una aplicación básica de Frontend desarrollada en React con Node.js para demostrar el despliegue en servicios de Azure.

## Estructura del Proyecto

- `app/src`: Contiene el código fuente de la aplicación React.
- `app/Dockerfile`: Define la imagen de contenedor para App Service.
- `app/server.js`: Servidor Express para servir los archivos estáticos en el contenedor.
- `iac/`: Directorio con el código de Terraform para la infraestructura.
- `.github/workflows/`: Directorio con los pipelines de GitHub Actions.

## Requisitos Locales

- Node.js 18+
- npm

## Ejecución Local

1. Instalar dependencias:
   ```bash
   cd app
   npm install
   ```

2. Ejecutar en modo desarrollo:
   ```bash
   npm run dev
   ```

3. Construir para producción:
   ```bash
   npm run build
   ```

## Despliegue

El despliegue está automatizado mediante GitHub Actions:
- `webstatic.yml`: Despliega a Azure Static Web Apps.
- `appservice.yml`: Construye una imagen Docker y despliega a Azure App Service.
