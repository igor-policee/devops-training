FROM node:14.15-alpine3.13 AS builder
USER root
ARG APP_NAME
ARG SRC_REPO
ENV APP_NAME=${APP_NAME}
ENV SRC_REPO=${SRC_REPO}
RUN apk add git
WORKDIR /src/${APP_NAME}
RUN git clone ${SRC_REPO} .
RUN yarn install \
    && yarn build
WORKDIR /builds/${APP_NAME}
CMD ["cp", "--recursive", "/src/${APP_NAME}/build/", "."]