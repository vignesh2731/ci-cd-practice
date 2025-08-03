FROM node:22-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

RUN npx tsc -b

EXPOSE 3000

CMD [ "node","dist","bin.js" ]