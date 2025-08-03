FROM node:22-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .
RUN chmod +x node_modules/.bin/tsc
RUN npx tsc -b

EXPOSE 3000

CMD [ "npm","run","start" ]