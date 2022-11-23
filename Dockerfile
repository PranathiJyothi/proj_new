FROM ubuntu 
RUN apt-get update
RUN apt-get install -y apache2 
RUN apt-get install -y apache2-utils
RUN apt-get clean 
RUN apt-get upgrade -y
EXPOSE 80
COPY . /var/www/html
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]