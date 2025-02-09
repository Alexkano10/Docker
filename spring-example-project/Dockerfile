# Utilizamos Amazon Corretto con Java 8
FROM amazoncorretto:8

# Establecemos el directorio de trabajo
WORKDIR /app

# Copiamos los archivos necesarios para compilar el proyecto
COPY . .

# Damos permisos de ejecución a mvnw
RUN chmod +x mvnw

# Construimos la aplicación
RUN ./mvnw package

# Exponemos el puerto 8080
EXPOSE 8080

# Comando para ejecutar la aplicación
CMD ["java", "-jar", "./target/docker-example-1.1.3.jar"]
