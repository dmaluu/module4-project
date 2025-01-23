FROM eclipse-temurin:17-jdk-jammy
WORKDIR /app
ENV PORT=8088
ARG VERSION=latest
COPY .mvn/ .mvn
COPY mvnw pom.xml ./
COPY src ./src
RUN apt-get update && apt-get install -y \
    docker.io \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
RUN ./mvnw install -DskipTests
CMD ["./mvnw", "spring-boot:run"]