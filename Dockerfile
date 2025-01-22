FROM eclipse-temurin:17-jdk-jammy
WORKDIR /app
ENV PORT=8088
COPY .mvn/ .mvn
COPY mvnw pom.xml ./
COPY src ./src
RUN ./mvnw install -DskipTests
CMD ["./mvnw", "spring-boot:run"]