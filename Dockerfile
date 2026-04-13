

#Comando para que o container criado pegue a página do html.
#COPY index.html /usr/share/nginx/html



#Comando para copiar a imagem.

FROM nginx:latest

#Copiar a configuração do Default onde está sendo alterado a porta nesse caso

COPY default.conf /etc/nginx/conf.d/default.conf