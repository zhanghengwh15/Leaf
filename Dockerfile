#FROM maven:3-jdk-8-alpine as builder
#WORKDIR /data
#COPY . .
#RUN mvn clean package -B -DskipTests


FROM openjdk:8-jre-slim
ENV TZ Asia/Shanghai
WORKDIR /data
COPY ./leaf-server/target/leaf.jar  .
CMD ["java","-jar","leaf.jar"]