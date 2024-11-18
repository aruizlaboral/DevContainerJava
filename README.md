# Dev Container Docker en JAVA

## link
[start spring ] (https://start.spring.io/)

[start spring ] (https://www.oracle.com/java/technologies/downloads/?er=221886)

[DEV1 ] (https://github.com/pedrovelasquez9/springboot-postgresql-docker-compose.git)

[DEV1 - video] (https://youtu.be/uqBZEL9m2V4?si=6MA3ekTzise3---Q)

## Docker Login
Comands
```bash
  docker login container-registry.oracle.com
  # Username: correoRegistrado@gmail.com
  # Password: 
  # Login Succeeded
```

compilacion con mvn 
```bash
  docker pull openjdk:17-jdk-alpine

  docker run -d --name my-running-app  openjdk:17-jdk-alpine
  docker run -d --name my-running-app --net=host -p 8080:8080 openjdk:17-jdk-alpine
  docker run -it --rm --name my-running-app openjdk:17-jdk-alpine
```

## link
[Apliacation online] (http://localhost:8080/)


## iterations
iterations  Docker 
```bash
  docker exec -it my-running-app bash
  ```

## Docker DockerFile
Docker DockerFile
```bash
  docker build -f docker-file/Dockerfile -t myimg-java-app .
  docker build -f Dockerfile-dev1 -t myimg-java-app .

  docker run -d --name my-running-app2 myimg-java-app 
  docker run -d --name my-running-app2 --net=host -p 8080:8080 myimg-java-app
```

## Docker Composer
Docker DockerCompose

```bash
  cd /docker
  # docker-compose up --build
  docker-compose -f docker/docker-compose-dev.yml up -d

  docker-compose up -d
  docker-compose ps
  docker-compose top

  docker-compose start
  docker-compose top

  docker-compose down -v
  docker-compose -f docker/docker-compose-dev.yml down -v
```

## detener y Eliminar
detener y Eliminar
```bash
  docker stop nombre-contenedor	#Parar un Contenedor
  docker rm nombre-contenedor	#Eliminar un Contenedor
  docker rm -f nombre-contenedor	#Parar  y eliminar el contenedor

  docker container prune	#Eliminar Todos los Contenedores Detenidos
  docker stop $(docker ps -q)	#Parar todos los contenedores

  docker rm $(docker ps -aq)	#Eliminar  todos los contenedores, incluidos los detenido
  docker rmi nombre-imagen	#Eliminar una imágenes
  docker rmi $(docker images -q)	#Eliminar todas las imágenes

  docker network prune	#Eliminar redes no utilizadas
  docker volume prune #Eiminar volúmenes no utilizados
  docker docker system prune -a	#eliminar todos los contenedores, imágenes, redes y volúmenes no utilizados 

  docker-compose down -v #para el contendedor y redes y volúmenes utilizados en compose
```
