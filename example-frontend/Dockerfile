# Usamos la imagen oficial de Node.js LTS
FROM node:16

# Definimos el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiamos el archivo package.json y package-lock.json para instalar las dependencias primero
COPY package*.json ./

# Instalamos las dependencias
RUN npm install

# Copiamos el resto del proyecto al contenedor
COPY . .

# Construimos los archivos estáticos
RUN npm run build

# Instalamos el paquete serve
RUN npm install -g serve

# Exponemos el puerto 5000
EXPOSE 5000

# Comando para iniciar la aplicación en producción
CMD ["serve", "-s", "build", "-l", "5000"]
