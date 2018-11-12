# Dockerfile for MsgraphNodeApp
# Alpine image with node.js and python
# see reference: https://github.com/microsoftgraph/msgraph-training-nodeexpressapp


# MAINTAINER Michael <mkuegeler@gmail.com>

FROM python:2.7-alpine

# Install node
RUN apk update && apk add --update nodejs nodejs-npm && apk add make

# Install make
# RUN apk add make

WORKDIR /app

COPY ./package.json package.json

# Install all dependencies in package.json
RUN npm install

# Install express-generator globally
RUN npm install express-generator -g

RUN express --hbs graph-tutorial

WORKDIR /app/graph-tutorial

RUN npm install

COPY ./graph-tutorial/app.js app.js
COPY ./graph-tutorial/graph.js graph.js
COPY ./graph-tutorial/tokens.js tokens.js
COPY ./graph-tutorial/.env .env
COPY ./graph-tutorial/public public
COPY ./graph-tutorial/routes routes
COPY ./graph-tutorial/views views

EXPOSE 3000

ENTRYPOINT ["npm","start"]