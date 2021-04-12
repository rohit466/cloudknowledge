FROM centos:latest
MAINTAINER rsharma533@gmail.com
RUN yum install -y httpd \
  zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page264/the-card.zip /var/www/html
WORKDIR /var/www/html
RUN unzip the-card.zip
RUN cp -rvf the-card/* .
RUN rm -rf _MACOSX the-card the-card.zip
CMD ["/usr/sbin/httpd", "-D" , "FOREGROUND"]
EXPOSE 80

