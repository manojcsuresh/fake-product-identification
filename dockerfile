FROM node:18-alpine
COPY package*.json .
RUN npm install \ 
    npm install truffle -g \
    truffle migrate
COPY . .
EXPOSE 3000
CMD ["npm", "run", "dev"]