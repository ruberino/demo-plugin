# Fetching the minified node image on apline linux
FROM node:14.17.0-alpine
WORKDIR /test-plugin
COPY package.json .
COPY . .
RUN npm install
RUN npm install -g typescript
RUN npm install -g ts-node
CMD npm start
EXPOSE 4832