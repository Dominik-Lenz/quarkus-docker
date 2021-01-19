FROM openjdk:11

COPY ./source /home/gradle/src/app

EXPOSE 8080

RUN ["chmod", "+x", "/home/gradle/src/app/startscript"]

ENTRYPOINT ["/home/gradle/src/app/startscript"] 

#ENTRYPOINT ["ls", "/home/gradle/src/app"]

#ENTRYPOINT ["./home/gradle/src/app/gradlew", "quarkusDev"]