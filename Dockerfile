# Fetching the minified node image on apline linux
FROM node:14.17.0-alpine
WORKDIR /
ADD package*.json ./
ADD openapi.yaml ./
ADD tsconfig.json ./
RUN npm install
RUN npm install -g typescript
RUN npm install -g ts-node
ADD app.ts ./
CMD [ "ts-node", "app.ts"]
EXPOSE 4832