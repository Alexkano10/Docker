# Usamos una imagen base de Alpine
FROM alpine:latest

# Instalamos curl y bash
RUN apk add --no-cache curl bash

# Copiamos el script al contenedor
COPY script.sh /script.sh

# Verificamos si el archivo script.sh existe
RUN ls -l /script.sh

# Hacemos el script ejecutable
RUN chmod +x /script.sh

# Establecemos ENTRYPOINT para ejecutar el script con bash
ENTRYPOINT ["/bin/bash", "/script.sh"]
