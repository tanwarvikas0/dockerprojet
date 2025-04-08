FROM ubuntu:14.04
MAINTAINER tanwarv224@gmail.com
RUN  apt-get update && apt-get install -y apache2  zip unzip 
COPY carvilla.zip /var/www/html
WORKDIR /var/www/html
RUN unzip carvilla.zip && \
    cp -rvf carvilla-v1.0/* . && \
    rm -rf carvilla.zip carvilla-v1.0
CMD ["/usr/sbin/apache2ctl","-D", "FOREGROUND"]
EXPOSE 80  
