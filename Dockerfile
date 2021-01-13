##Descargamos una version de UBUNTU, a traves del tag
FROM ubuntu:12.04
MAINTAINER Apasoft Formacion "apasoft.formacion@gmail.com"
##Actualizamos el sistema
RUN apt-get update
##Actualizamos el sistema
RUN apt-get update
##Instalamos nginx
RUN apt-get install -y nginx
##Creamos un volumen para que pueda ser compartido con la maquina nativa
VOLUME /usr/share/nginx/www/
##Agregamos la carpeta web al contenedor
ARG webpage
ADD $webpage /usr/share/nginx/www/
##Arrancamos NGINX a traves de ENTRYPOINT para que no pueda ser
##Modificado en la creacion del contenedor
ENTRYPOINT ["/usr/sbin/nginx","-g","daemon off;"]
##Exponemos el Puerto 80
EXPOSE 80