# Base Image
FROM centos:centos7

# Install Apache
RUN ["yum", "-y", "install", "httpd"]

# Start httpd
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]

# Copy Html
COPY index.html /var/www/html
# Override Conf
COPY httpd.conf /etc/httpd/conf/
