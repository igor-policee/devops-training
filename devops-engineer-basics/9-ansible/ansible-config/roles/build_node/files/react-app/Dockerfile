FROM node:14.15-alpine3.13 AS builder
ARG BUILD_NAME
USER root
WORKDIR /src/${BUILD_NAME}
COPY ./repo/ .
RUN yarn install \
    && yarn build

FROM alpine:latest
ARG BUILD_NAME
USER root
WORKDIR /builds/${BUILD_NAME}
COPY --from=builder /src/${BUILD_NAME}/build/ .