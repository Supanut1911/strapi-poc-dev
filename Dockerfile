FROM node:18-buster

WORKDIR /app

COPY ./package*.json ./

RUN npm ci

COPY . .

ENV NODE_ENV=production

RUN npm run build

EXPOSE 1337

CMD [ "npm", "run", "develop" ]
