FROM php:7.4-apache

COPY backend/ /var/www/html/backend
COPY chartjs/ /var/www/html/chartjs

COPY *.js /var/www/html
COPY *.html /var/www/html


ENV WEBPORT=80
ENV MAX_LOG_COUNT=500
ENV IP_SERVICE="ip.sb"
ENV SAME_IP_MULTI_LOGS="true"


# Final touches

EXPOSE 80

