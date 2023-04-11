FROM dokken/centos-8
MAINTAINER Amit singh <amitsingh6763@gmail.com>
RUN yum makecache && \
    yum -y update && \
    yum -y install httpd && \
    yum -y install unzip && \
    yum clean all
ADD https://www.free-css.com/assets/files/free-css-templates/download/page285/bitcypo.zip /var/www/html
WORKDIR /var/www/html
RUN unzip https://www.free-css.com/assets/files/free-css-templates/download/page285/bitcypo.zip && \
    rm -rf bitcypo.zip && \
    cp -rf bitcypo/* . && \
    rm -rf bitcypo 
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
