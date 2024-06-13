# Define a imagem base oficial do Node.js
FROM node:14

# Define o diretório de trabalho dentro do container
WORKDIR /usr/src/app

# Copia os arquivos package.json e package-lock.json para o diretório de trabalho
COPY package*.json ./

# Instala as dependências do projeto
RUN npm install

# Copia todos os arquivos do projeto para o diretório de trabalho do container
COPY . .

# Exponha a porta 3000 para permitir o tráfego de entrada
EXPOSE 3000

# Adicione um comando de diagnóstico temporário para verificar o build
RUN echo "Executando npm run build para verificar erros"
RUN npm run build

# Define o comando para iniciar a aplicação
CMD ["node", "App.js"]