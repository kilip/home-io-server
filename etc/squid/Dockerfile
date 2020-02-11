FROM clearlinux:base

RUN swupd update
RUN swupd bundle-add squid

RUN mkdir -p /etc/squid
COPY entrypoint.sh /usr/bin/entrypoint.sh

EXPOSE 3128

ENTRYPOINT [ "entrypoint.sh" ]