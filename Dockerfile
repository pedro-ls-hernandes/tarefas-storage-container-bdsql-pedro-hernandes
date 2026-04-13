# Imagem base
FROM node:20-alpine

# Diretório de trabalho
WORKDIR /app

# Copiar arquivos de dependência
COPY package*.json ./

# Instalar dependências
RUN npm install

# Copiar restante do projeto
COPY . .

# Build da aplicação
RUN npm run build

# Expor porta
EXPOSE 3000

# Rodar aplicação
CMD ["npm", "start"]