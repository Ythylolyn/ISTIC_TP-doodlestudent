# Stage 1 - BUILD
FROM alpine AS back-build-step

RUN apk add --no-cache git maven\
    && git clone https://github.com/Ythylolyn/ISTIC_TP-doodlestudent.git

WORKDIR /ISTIC_TP-doodlestudent/api

RUN mvn compile
RUN mvn package -Dquarkus.package.type=uber-jar


# Stage 2 - RUN
FROM openjdk:17

COPY --from=back-build-step /ISTIC_TP-doodlestudent/api/target/tlcdemoApp-1.0.0-SNAPSHOT-runner.jar runner.jar

EXPOSE 8080

CMD java -jar runner.jar
