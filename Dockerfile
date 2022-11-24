FROM node:18.12.1-alpine as builder
COPY . /app
WORKDIR /app

RUN npm config set strict-ssl false
RUN npm install
RUN npm config set strict-ssl true

RUN npm run build

EXPOSE 3000

CMD ["npm", "run", "start"]
