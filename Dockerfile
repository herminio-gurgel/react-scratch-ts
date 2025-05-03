# syntax=docker/dockerfile:1

FROM node:18.18.0-alpine

RUN apk add --no-cache git

USER node

WORKDIR /usr/src/app

COPY . .

RUN git config --global init.defaultBranch main && \
    git config --global user.email "herminio.gurgel@gmail.com" && \
    git config --global user.name "Hermínio Gurgel" && \
    git init
