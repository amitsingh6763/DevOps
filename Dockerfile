FROM centos:latest
MAINTAINER Amit singh <amitsingh6763@gmail.com>
RUN yum install -y httpd unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page285/bitcypo.zip /var/www/html
WORKDIR /var/www/html
RUN unzip https://www.free-css.com/assets/files/free-css-templates/download/page285/bitcypo.zip &&\
    rm -rf bitcypo.zip
    cp -rf bitcypo/*
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
