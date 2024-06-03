# This Dockerfile is for HTTPD Web Server
FROM centos:7
RUN yum -y update
RUN yum -y install HTTPD
COPY ./index.html /var/www/html/index.html
EXPOSE 80
CMD [ "HTTPD", "-D", "FOREGROUND" ]