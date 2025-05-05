FROM node:23.11.0-alpine3.21
ENV NODE_ENV=production

WORKDIR /app

COPY ["package.json", "./"]

RUN npm install

COPY . .

CMD [ "node", "index.js" ]