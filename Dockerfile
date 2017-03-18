FROM ubuntu:14.04
MAINTAINER Me
RUN apt-get update && apt-get install -y  apache2


# Create app directory
WORKDIR /var/www/html


# Bundle app source
COPY website/ /var/www/html/

EXPOSE 80
CMD ["apache2ctl", "-D", "FOREGROUND"]]