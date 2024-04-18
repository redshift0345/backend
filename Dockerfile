FROM node:18.19-slim

WORKDIR /src

COPY . .

RUN npm i && npm run build

WORKDIR /src/dist

EXPOSE 80

CMD ["node", "server.js"]
