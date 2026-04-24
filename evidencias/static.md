# Evidencia de Implementación: Azure Static Web Apps
**Materia:** New Technologies  
**Tarea:** Tarea 3 - Parcial 2  
**Nombre del Alumno:** [TU NOMBRE COMPLETO AQUÍ]

---

## 1. Configuración del Pipeline (GitHub Actions)
Se configuró el archivo `webstatic.yml` para detectar cambios en la carpeta `app/` y desplegar automáticamente hacia Azure.

> **[PEGAR AQUÍ: Captura de pantalla del archivo webstatic.yml en GitHub o del listado de Workflows en la pestaña Actions]**

**Explicación:** La imagen muestra la definición del pipeline que utiliza el token de implementación para autenticarse con Azure y subir los archivos estáticos de la carpeta `dist`.

---

## 2. Ejecución Exitosa del Despliegue
Logs de GitHub Actions mostrando que todos los pasos se completaron correctamente.

> **[PEGAR AQUÍ: Captura de pantalla de los logs de GitHub Actions en verde (Build and Deploy Job)]**

**Explicación:** Se observa que el proceso de compilación (build) y la carga (upload) a los servidores de Azure se realizaron sin errores.

---

## 3. Aplicación en Producción
Vista de la aplicación funcionando desde la URL oficial proporcionada por Azure.

> **[PEGAR AQUÍ: Captura de pantalla del navegador mostrando la app en la URL .azurestaticapps.net]**

**Explicación:** La aplicación es accesible públicamente a través de la infraestructura de Azure Static Web Apps, demostrando que el despliegue fue exitoso.
