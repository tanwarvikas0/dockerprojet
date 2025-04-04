FROM ubuntu
MAINTAINER tanwarv224@gmail.com
RUN  apt-get install -y apache2 \
    zip \
    unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page296/finexo.zip  /var/www/html
WORKDIR /var/www/html
RUN   unzip finexo.zip
RUN  cp -rvf finexo-html/* .
CMD ["/usr/sbin/httpd", "D", "FOREGROUD"]
EXPOSE 80
