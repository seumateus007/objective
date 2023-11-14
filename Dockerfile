#Especifica a imagem
FROM node:16.20.1-alpine
# Criando diretório dentro do container
WORKDIR /app
# Copiar package.json primeiro para instalar as dependências
COPY package*.json /app/
# Comando para instalar as dependências
RUN yarn install
# Copiando todo o restando do projeto para dentro do diretorio
COPY ./ /app/
#Expondo a porta do projeto
EXPOSE 3000
# Iniciando o container
CMD ["yarn", "start"]