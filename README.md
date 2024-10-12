En este repositorio se encuentran los archivos necesarios para crear la imagen base a partir de la cual se montará la imagen OCI de la aplicación myButtonProject.
Esta imagen base contiene los package.json que descargarán las dependencias de producción necesarias para la aplicación así como el Dockerfile para construir la imagen.
Esta imagen se encuentra en https://hub.docker.com/r/vicofran/mybuttonprojectbase y puede usarse como base para otros projectos añadiendo el siguiente comando el tu Dockerfile.
FROM vicofran/mybuttonprojectbase:latest