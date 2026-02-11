# WebMap - Viaje Pirineos 2025

Web interactiva para planificar y visualizar un viaje de 5 días por los Pirineos franceses.

**Demo:** [https://webmap-webmaps.mdksvp.easypanel.host/](https://webmap-webmaps.mdksvp.easypanel.host/)

## Características

- Mapa interactivo con los 4 destinos
- Widget de clima en tiempo real (Open-Meteo API)
- Información de tráfico
- Diseño glassmorphism con dark mode
- Responsive design

## Destinos

1. **Guardo** - Día 1: Punto de encuentro en Montaña Palentina
2. **Biarritz** - Día 2: Playa y glamour
3. **Pau** - Día 2.5: Historia y cultura
4. **Lourdes** - Día 3: Santuario mundial
5. **Cauterets** - Día 4: Estación de esquí

## Despliegue en Easy Panel

### Opción 1: Docker Compose

1. Copia el contenido del proyecto a tu servidor
2. Renombra `.env.example` a `.env` y configura las contraseñas
3. Ejecuta:
   ```bash
   docker-compose up -d
   ```

### Opción 2: Easy Panel

1. Ve a tu proyecto en Easy Panel
2. Crea un nuevo servicio tipo "App"
3. Conecta el repositorio o sube los archivos
4. Configura el puerto 80
5. Despliega

**URL de producción:** https://webmap-webmaps.mdksvp.easypanel.host/

## Desarrollo Local

Simplemente abre `index.html` en tu navegador o usa un servidor local:

```bash
# Con Python
python3 -m http.server 8080

# Con Node.js (npx)
npx serve
```

## Estructura del Proyecto

```
webmap/
├── index.html          # Aplicación principal
├── Dockerfile          # Imagen Docker con nginx
├── nginx.conf          # Configuración de nginx
├── docker-compose.yml  # Orquestación de servicios
├── .env.example        # Variables de entorno ejemplo
└── README.md           # Este archivo
```

## APIs Utilizadas

- **Mapa**: [Leaflet.js](https://leafletjs.com/) con tiles de CartoDB
- **Clima**: [Open-Meteo](https://open-meteo.com/) (gratuito, sin API key)
- **Iconos**: [Lucide Icons](https://lucide.dev/)

## Futuras Mejoras

- [ ] Integración con base de datos MySQL para guardar POIs
- [ ] Sistema de usuarios y viajes personalizados
- [ ] API de tráfico real (TomTom/Google)
- [ ] Modo offline con Service Worker
- [ ] Compartir rutas en redes sociales
