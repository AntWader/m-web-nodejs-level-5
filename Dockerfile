FROM node:lts-alpine3.17

WORKDIR /app

COPY package*.json ./

RUN export NODE_OPTIONS="--max-old-space-size=8192"

RUN apk update && apk add bash

RUN npm install

COPY . .

CMD [ "npm", "start" ]