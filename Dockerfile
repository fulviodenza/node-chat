FROM node:14

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install
RUN npm install express@4
RUN npm install socket.io

COPY . .

EXPOSE 3003

CMD [ "node", "index.js" ]
