FROM node:lts-alpine3.17

WORKDIR /app

COPY package*.json ./

RUN apk update && apk add bash

RUN npm ci

COPY . .