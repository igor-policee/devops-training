FROM node:14.15.0-stretch AS builder
WORKDIR /src/skillbox-deploy-blue-green
COPY . .
RUN yarn install
RUN yarn build

FROM alpine:latest
COPY --from=builder /src/skillbox-deploy-blue-green/build /src/skillbox-deploy-blue-green/build
CMD ["ls", "/src/skillbox-deploy-blue-green/build"]