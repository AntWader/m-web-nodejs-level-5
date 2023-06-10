FROM node:lts-alpine3.17

WORKDIR /app

COPY package*.json ./

RUN apk update && apk add bash

RUN export NODE_OPTIONS="--max-old-space-size=4096" 

RUN npm ci

COPY . .