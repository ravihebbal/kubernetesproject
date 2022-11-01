FROM amazonlinux
RUN yum install -y httpd \
    zip \
    unzip 
WORKDIR /var/www/html
ADD https://www.free-css.com/assets/files/free-css-templates/download/page284/painter.zip /var/www/html/
RUN unzip painter.zip
RUN cp -rvf painting-company-website-template/* .
RUN rm -rf painting-company-website-template maker.zip 
CMD ["/usr/sbin/httpd", "-D",  "FOREGROUND"]
EXPOSE 80 
