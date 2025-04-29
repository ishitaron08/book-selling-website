FROM httpd:latest

COPY *.html /usr/local/apache2/htdocs/
COPY css.css /usr/local/apache2/htdocs/
COPY *.png /usr/local/apache2/htdocs/

# Set permissions to allow Apache to read the files
RUN chmod -R 755 /usr/local/apache2/htdocs/

EXPOSE 80