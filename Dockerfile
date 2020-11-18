FROM openjdk:11-jre-slim

RUN ln -s $(which java) /usr/bin/java
RUN apt-get update && apt-get install -y --no-install-recommends \
  bzip2 \
  unzip \
  xz-utils \
  curl \
  bash \
  jq \
  procps

EXPOSE 8080

ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar

ENTRYPOINT ["java","-jar","/app.jar"]