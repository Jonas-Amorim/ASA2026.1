FROM ubuntu:22.04                          # Base LTS estável

# Instala bind9 + utils (dnsutils para dig)
RUN apt-get update && apt-get install -y \
    bind9 bind9utils bind9-doc dnsutils && \
    rm -rf /var/lib/apt/lists/*          # Limpa cache (imagem menor)

# Pastas + permissões seguras (bind user)
RUN mkdir -p /etc/bind /var/cache/bind && \
    chown -R bind:bind /etc/bind /var/cache/bind

# Configs via volume Compose (comentado)
#COPY ./bind /etc/bind

EXPOSE 53/tcp 53/udp 953/tcp              # DNS + RNDC (gerenciamento)

CMD ["named", "-g", "-c", "/etc/bind/named.conf", "-u", "bind"]
