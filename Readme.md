# Tarea 3 - Implementación en Azure

Este proyecto contiene la implementación de una aplicación Front-end en Node.js desplegada en Azure Static Web Apps y Azure App Service utilizando Terraform para IaC y GitHub Actions para CI/CD.

## Estructura de la Entrega

- `app/`: Código fuente de la aplicación (Node.js/React).
  - `src/`: Código fuente.
  - `Dockerfile`: Configuración de contenedor.
  - `.gitignore`: Archivos ignorados.
  - `Readme.md`: Documentación de la app.
- `iac/`: Código de Terraform.
  - `static.tf`: Infraestructura para Static Web App.
  - `appservice.tf`: Infraestructura para App Service.
  - `main.tf`, `variables.tf`, `provider.tf`: Configuración general.
- `webstatic.yml`: Pipeline para Static Web Apps (Copia).
- `appservice.yml`: Pipeline para App Service (Copia).
- `evidencias/`: Documentos de evidencia (Deben ser PDFs).

## Instrucciones de Despliegue

1. **Infraestructura**:
   ```bash
   cd iac
   terraform init
   terraform apply
   ```
2. **GitHub Secrets**: Configurar los siguientes secretos en el repositorio:
   - `AZURE_STATIC_WEB_APPS_API_TOKEN`: Obtenido de la Static Web App creada.
   - `AZURE_WEBAPP_PUBLISH_PROFILE`: Archivo de perfil de publicación de la Web App.

3. **Pipelines**: Los pipelines se encuentran en `.github/workflows/` para su ejecución automática.
