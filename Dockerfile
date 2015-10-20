FROM node:4.2.1

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ONBUILD RUN npm install express couchbase ottoman node-json-minify

CMD ["npm", "start"]