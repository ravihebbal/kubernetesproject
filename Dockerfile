FROM amazonlinux
RUN yum install -y httpd \
    zip \
    unzip 
WORKDIR /var/www/html
ADD https://www.free-css.com/assets/files/free-css-templates/download/page284/maker.zip /var/www/html/
RUN unzip maker.zip
RUN cp -rvf maker/* .
RUN rm -rf maker maker.zip 
CMD ["/usr/sbin/httpd", "-D",  "FOREGROUND"]
EXPOSE 80 
