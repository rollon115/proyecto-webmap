FROM nginx:alpine
RUN apk add --no-cache curl
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY index.html /usr/share/nginx/html/index.html
COPY plan-cirque-lys-25-26.jpg /usr/share/nginx/html/plan-cirque-lys-25-26.jpg
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
