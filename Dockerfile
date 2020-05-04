FROM node:13-alpine

ENV NODE_PATH /node_modules/

# RUN set -xe \
#   && buildDeps='make g++'\
#   && apk update && apk add --no-cache $buildDeps \
#   && rm -fR /var/cache/apk/*

WORKDIR /

COPY package*.json /

RUN npm install --no-optional

COPY . /app

RUN rm -rf /app/node_modules

WORKDIR /app
