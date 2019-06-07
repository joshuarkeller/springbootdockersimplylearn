FROM openjdk:8-jdk-alpine
LABEL maintainer="joshuarkeller"
VOLUME /tmp
ADD target/docker-1.0-SNAPSHOT.jar run.jar
EXPOSE 9091
ENV SPRING_PROFILE=""
ENV JAVA_OPTS=""
ENTRYPOINT exec java $JAVA_OPTS \
 -Dspring.profiles.active=$SPRING_PROFILE \
 -Djava.security.egd=file:/dev/./urandom \
 -jar /run.jar