FROM node:4.2.1

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN npm install express express-generator couchbase ottoman node-json-minify
RUN ./node_modules/express-generator/bin/express .
RUN npm install

ONBUILD COPY . /usr/src/app

CMD ["npm", "start"]