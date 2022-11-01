FROM amazonlinux 
RUN yum install httpd -y
RUN yum install zip -y 
RUN yum install unzip -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page284/industrial.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip industrial.zip
RUN cp -rvf industrial/*
RUN rm -rf industrial industrial.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
