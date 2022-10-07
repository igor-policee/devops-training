FROM node:14.15.0-stretch AS builder
WORKDIR /src/node-skillbox
COPY ../../configure-react-app .
RUN yarn install
RUN yarn build

FROM alpine:latest
ARG BUILD_NUMBER
COPY --from=builder /src/node-skillbox/build /src/node-skillbox/build-${BUILD_NUMBER}
CMD ["sleep", "infinity"]