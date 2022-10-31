FROM node:14.15-alpine3.13 AS builder
USER root
ARG BUILD_NAME
ENV BUILD_NAME=${BUILD_NAME}
WORKDIR /src/${BUILD_NAME}
COPY ./repo/ .
RUN yarn install \
    && yarn build