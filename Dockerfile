# syntax=docker/dockerfile:1
FROM node:19-bullseye
WORKDIR /app
COPY ["package.json", "package-lock.json*", "./"]
RUN npm install
COPY . .
CMD [ "npm", "start" ]
