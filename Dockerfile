# syntax=docker/dockerfile:1
FROM node:10.19.0

WORKDIR /opt/app/

COPY package*.json ./

RUN npm ci

COPY . .

EXPOSE 8080
CMD ["npm", "start"]
