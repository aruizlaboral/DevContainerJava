# Usa una imagen base con OpenJDK 11, adecuada para aplicaciones Java modernas
FROM openjdk:11-jre-slim

# Define una etiqueta de mantenimiento (opcional)
LABEL maintainer="tu_correo@example.com"

# Establece la ubicación de la aplicación en el contenedor
WORKDIR /usr/src/myapp

# Copia el código fuente a la ubicación de trabajo en el contenedor
COPY ./app-java /usr/src/myapp

# Compila los archivos Java si aún no están compilados
#RUN javac Main.java

# Configura el comando de inicio del contenedor
#CMD ["java", "Main"]

# Añade variables de entorno (opcional), puedes definir JAVA_OPTS para optimizar el rendimiento de JVM
# ENV JAVA_OPTS="-Xmx512m -Xms256m"

# Exponer puertos si es necesario (por ejemplo, 8080 para una aplicación web)
EXPOSE 8080
