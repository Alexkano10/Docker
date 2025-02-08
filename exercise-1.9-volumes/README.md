# Docker Exercise 1.9 - Volumes

## Descripción

En este ejercicio hemos trabajado con volúmenes en Docker para montar un archivo de registro (`text.log`) de un contenedor en nuestro sistema de archivos local. Esto permite que los registros generados por el contenedor persistan fuera de su almacenamiento efímero y sean accesibles en la máquina anfitriona.

### Objetivo

El objetivo era ejecutar un contenedor basado en la imagen `devopsdockeruh/simple-web-service`, que genera marcas de tiempo cada dos segundos en un archivo `text.log`, y montar este archivo en el sistema de archivos local para poder acceder a los registros generados por el contenedor.

### Pasos realizados

1. **Montaje del volumen**: Utilizamos el comando `docker run` con la opción `-v` para montar el archivo `text.log` desde el sistema local en el contenedor.
   
   El comando ejecutado fue:
   ```bash
   docker run -v "/home/alex/DevOps/Docker/Docker/exercise-1.9-volumes/text.log:/usr/src/app/text.log" devopsdockeruh/simple-web-service
   ```

2. **Verificación de los registros**: El contenedor comenzó a generar marcas de tiempo en el archivo `text.log` montado, y esos registros fueron guardados directamente en el archivo en la máquina local.

3. **Comprobación**: Usamos el comando `cat` para visualizar el archivo `text.log` y verificar que se estaban añadiendo correctamente los registros.

   Comando:
   ```bash
   cat /home/alex/DevOps/Docker/Docker/exercise-1.9-volumes/text.log
   ```

### Resultados

Los registros se generaron correctamente y fueron almacenados en el archivo `text.log` en la máquina local. Esto demuestra cómo Docker puede usar volúmenes para persistir datos fuera del contenedor y permitir su acceso y modificación.

### Comandos útiles

- **Montar un volumen**:
  ```bash
  docker run -v "/path/to/local/file:/path/in/container" image_name
  ```

- **Ver los registros generados**:
  ```bash
  cat /path/to/local/file
  ```

## Conclusión

Este ejercicio muestra cómo interactuar con un contenedor de Docker a través de volúmenes, lo cual es útil cuando se necesita que los datos persistan más allá de la vida del contenedor y que sean accesibles desde el sistema de archivos local.
