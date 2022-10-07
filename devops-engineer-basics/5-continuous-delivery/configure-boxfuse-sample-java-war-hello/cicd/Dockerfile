FROM maven:3.8.6-eclipse-temurin-8-alpine AS builder
ARG CI_PROJECT_NAME
WORKDIR /src/${CI_PROJECT_NAME}
COPY . .
RUN mvn package

FROM alpine:latest
ARG CI_PROJECT_NAME
ARG BUILD_NUMBER
COPY --from=builder /src/${CI_PROJECT_NAME}/target/hello-1.0.war /src/${CI_PROJECT_NAME}/build-${BUILD_NUMBER}.war
CMD ["sleep", "infinity"]