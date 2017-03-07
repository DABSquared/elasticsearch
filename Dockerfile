FROM docker.elastic.co/elasticsearch/elasticsearch

LABEL maintainer "dbrooks@dabsquared.com"

COPY docker-healthcheck /usr/local/bin/

HEALTHCHECK CMD ["docker-healthcheck"]