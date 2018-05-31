FROM openjdk:10-jdk
VOLUME /tmp
ADD build/libs/eureka-2-0.0.1.jar app.jar
EXPOSE 8080
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar" ]