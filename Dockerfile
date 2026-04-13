
#FROM nginx:latest

#Comando para que o container criado pegue a página do html.
#COPY index.html /usr/share/nginx/html


#Copiar a configuração do Default onde está sendo alterado a porta nesse caso

COPY default.conf /etc/nginx/conf.d/default.conf