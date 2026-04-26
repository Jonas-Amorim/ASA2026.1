FROM ubuntu:22.04                          

RUN apt-get update && apt-get install -y \
    bind9 bind9utils dnsutils

RUN mkdir -p /etc/bind /var/cache/bind && \
    chown -R bind:bind /etc/bind /var/cache/bind

CMD ["named", "-g", "-c", "/etc/bind/named.conf", "-u", "bind"]

