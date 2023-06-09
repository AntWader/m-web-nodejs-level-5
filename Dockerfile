FROM node:lts-alpine3.16

WORKDIR /app

COPY package*.json ./

RUN npm ci

COPY . .