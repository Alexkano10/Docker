# Utilizamos una imagen base con Go 1.16
FROM golang:1.16-alpine

# Definimos el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiamos los archivos go.mod y go.sum para aprovechar la caché de Docker
COPY go.mod go.sum ./

# Instalamos las dependencias del proyecto
RUN go mod tidy

# Copiamos todo el código fuente del proyecto al contenedor
COPY . .

# Construimos el proyecto
RUN go build -o server .

# Exponemos el puerto 8080 (puedes cambiarlo si lo necesitas)
EXPOSE 8080

# Establecemos las variables de entorno (puedes configurarlas según sea necesario)
ENV PORT=8080
ENV REQUEST_ORIGIN=https://example.com

# Comando para ejecutar el servidor
CMD ["./server"]
