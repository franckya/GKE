FROM centos:7
MAINTAINER Yannick Djomo
RUN yum install httpd -y
ADD index.html /var/www/html/

EXPOSE 80
CMD ["-D","FOREGROUND"]
ENTRYPOINT ["/usr/sbin/httpd"]
