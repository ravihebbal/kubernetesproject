FROM centos:latest
MAINTAINER ravi.hebbal07@gmail.com 
RUN yum install -y httpd \
	zip \
	unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page284/pet-shop.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip pet-shop.zip
RUN cp -rvf pet-shop/*
RUN rm -rf pet-shop pet-shop.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
