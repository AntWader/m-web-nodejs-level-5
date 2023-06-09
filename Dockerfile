FROM node:lts-alpine3.17

WORKDIR /app

COPY package*.json ./

#Right way is using ENV
ENV NODE_OPTIONS="--max-old-space-size=4096"

RUN apk update && apk add bash

RUN npm install

COPY . .

CMD [ "npm", "start" ]