FROM node:14.15.0-stretch AS builder
ARG CI_PROJECT_NAME
WORKDIR /src/${CI_PROJECT_NAME}
COPY . .
RUN yarn install
RUN yarn build

FROM alpine:latest
ARG CI_PROJECT_NAME
ARG BUILD_NUMBER
COPY --from=builder /src/${CI_PROJECT_NAME}/build /src/${CI_PROJECT_NAME}/build-${BUILD_NUMBER}
CMD ["sleep", "infinity"]