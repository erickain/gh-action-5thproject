FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS cluster0.qirgk38.mongodb.net

ENV MONGODB_USERNAME ericdevops
ENV MONGODB_PASSWORD aGn27De3CnBsRyaJ

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]