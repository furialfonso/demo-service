FROM openjdk:17-jdk-alpine
VOLUME /tmp
ARG JAVA_OPTS
ENV JAVA_OPTS=$JAVA_OPTS
COPY target/demo-0.0.1-SNAPSHOT.jar cowdemo.jar
ENTRYPOINT exec java $JAVA_OPTS -jar cowdemo.jar
# alwais use mvn clean install -DskipTests for set the profile only test or prod
