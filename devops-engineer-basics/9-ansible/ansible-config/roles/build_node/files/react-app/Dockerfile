FROM node:14.15-alpine3.13 AS builder
USER root
RUN apk add git
ENV APP_NAME=${APP_NAME}
ENV SRC_REPO=${REPO}
WORKDIR /src/${APP_NAME}
RUN git clone ${SRC_REPO} .
RUN yarn install; \
    yarn build
WORKDIR /builds/${APP_NAME}
CMD ["cp", "--recursive", "/src/${APP_NAME}/build/", "."]