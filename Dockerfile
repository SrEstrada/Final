FROM httpd:2.4
RUN apt-get update && apt-get install -y perl libapache2-mod-perl2
COPY ./html/ /usr/local/apache2/htdocs/
COPY ./cgi-bin/ /usr/local/apache2/cgi-bin/
RUN chmod -R 755 /usr/local/apache2/cgi-bin/

