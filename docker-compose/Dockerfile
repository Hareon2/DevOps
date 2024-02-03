FROM node:16-alpine as build
WORKDIR /opt/app
ADD .*json ./
RUN npm install
ADD . .
RUN npm run build api
