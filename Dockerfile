FROM eclipse-temurin:21

ENV SPRING_PROFILE="live"
ENV SERVER_PORT=8761

RUN ln -snf /usr/share/zoneinfo/Asia/Seoul /etc/localtime

RUN mkdir /opt/app
COPY target/eureka.jar /opt/app
CMD ["java", "-Dspring.profiles.active=${SPRING_PROFILE}", "-Dserver.port=${SERVER_PORT}", "-Duser.timezone=Asia/Seoul", "-jar", "/opt/app/eureka.jar"]
