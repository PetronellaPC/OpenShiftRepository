# This is a comment line
#FROM ubi7/ubi:7.7
#LABEL description="This is a custom httpd container image"
#MAINTAINER Petronela Cretu petronela.cretu-bm.com
#RUN yum install -y httpd
#EXPOSE 80
#ENV LogLevl "info"
#ADD http://someserver.com/filename.pdf /var/www/html

#USER apache
#ENTRYPOINT ["/bin/bash"]
#CMD []
#
FROM ubi7/ubi:7.7

MAINTAINER PC

LABEL description="A basic Apache container on RHEL 7 UBI"

RUN yum install -y httpd && \
    yum clean all

RUN echo "Hello from Dockerfile" > /usr/share/httpd/noindex/index.html

EXPOSE 80

ENTRYPOINT  ["httpd", "-D", "FOREGROUND"] 
