FROM maven:3.9.6-eclipse-temurin-21 AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests

FROM eclipse-temurin:21-jre
WORKDIR /app
COPY --from=build /app/target/*.jar app.jar

# Defina os argumentos (para docker build)
ARG AWS_ACCESS_KEY_ID
ARG AWS_SECRET_ACCESS_KEY

# Passe os argumentos para as variáveis de ambiente
ENV AWS_ACCESS_KEY_ID=AKIAV3NUZPS7DZ743Z6E
ENV AWS_SECRET_ACCESS_KEY=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
ENV AWS_REGION=us-east-1
ENV AWS_BUCKET_NAME=qrcode-jade

ENTRYPOINT ["java", "-jar", "app.jar"]