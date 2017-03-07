FROM docker.elastic.co/elasticsearch/elasticsearch:5.2.2

LABEL maintainer "dbrooks@dabsquared.com"

COPY docker-healthcheck /usr/local/bin/

HEALTHCHECK CMD ["docker-healthcheck"]