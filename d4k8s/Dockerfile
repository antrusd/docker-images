FROM docker:19.03.1-dind

ENV container docker

RUN set -eux; \
    apk add --no-cache bash \
                       curl \
                       findmnt

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD []
