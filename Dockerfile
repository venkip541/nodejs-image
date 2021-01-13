FROM node:13-alpine

WORKDIR /node

COPY package.json package-lock.json ./

RUN npm install express 

RUN npm install --production

COPY . .

EXPOSE 3000

CMD node index.js
