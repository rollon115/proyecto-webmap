# WebMap - Viaje Pirineos 2025

Web interactiva para planificar y visualizar un viaje de 5 dias por los Pirineos franceses.

## Caracteristicas

- Mapa interactivo con los 4 destinos
- Widget de clima en tiempo real (Open-Meteo API)
- Informacion de trafico
- Diseño glassmorphism con dark mode
- Responsive design

## Destinos

1. **Guadalupe** - Dia 1: Pueblo vascofrances con encanto
2. **Biarritz** - Dia 2: Playa y glamour
3. **Lourdes** - Dia 3: Santuario mundial
4. **Cauterets** - Dia 4: Estacion de esqui

## Despliegue en Easy Panel

### Opcion 1: Docker Compose

1. Copia el contenido del proyecto a tu servidor
2. Renombra `.env.example` a `.env` y configura las contraseñas
3. Ejecuta:
   ```bash
   docker-compose up -d
   ```

### Opcion 2: Easy Panel

1. Ve a tu proyecto en http://217.160.226.21:3000/projects/webmap
2. Crea un nuevo servicio tipo "App"
3. Conecta el repositorio o sube los archivos
4. Configura el puerto 80
5. Despliega

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
├── index.html          # Aplicacion principal
├── Dockerfile          # Imagen Docker con nginx
├── nginx.conf          # Configuracion de nginx
├── docker-compose.yml  # Orquestacion de servicios
├── .env.example        # Variables de entorno ejemplo
└── README.md           # Este archivo
```

## APIs Utilizadas

- **Mapa**: [Leaflet.js](https://leafletjs.com/) con tiles de CartoDB
- **Clima**: [Open-Meteo](https://open-meteo.com/) (gratuito, sin API key)
- **Iconos**: [Lucide Icons](https://lucide.dev/)

## Futuras Mejoras

- [ ] Integracion con base de datos MySQL para guardar POIs
- [ ] Sistema de usuarios y viajes personalizados
- [ ] API de trafico real (TomTom/Google)
- [ ] Modo offline con Service Worker
- [ ] Compartir rutas en redes sociales
