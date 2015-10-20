FROM node:4.2.1

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN npm install express couchbase ottoman node-json-minify

ONBUILD COPY . /usr/src/app

CMD ["npm", "start"]