FROM ubuntu:22.04

# Instala bind9 e ferramentas
RUN apt-get update && apt-get install -y bind9 bind9utils bind9-doc dnsutils && rm -rf /var/lib/apt/lists/*

# Cria pastas e ajusta permissões
RUN mkdir -p /etc/bind /var/cache/bind && chown -R bind:bind /etc/bind /var/cache/bind

# Copia configs locais
#COPY ./bind /etc/bind Adicionado no Compose, arg desnecessário.

# Expõe portas DNS
EXPOSE 53/tcp 53/udp 953/tcp

# Roda named em foreground
CMD ["named", "-g", "-c", "/etc/bind/named.conf", "-u", "bind"]
