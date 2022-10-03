FROM node:14.15.0-stretch AS builder
WORKDIR /src/node-skillbox
COPY . .
RUN yarn install
RUN yarn build

FROM alpine:latest
COPY --from=builder /src/node-skillbox/build /src/node-skillbox/build
CMD ["ls", "/src/node-skillbox/build"]