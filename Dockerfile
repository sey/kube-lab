FROM eclipse-temurin:21.0.1_12-jre-jammy
RUN mkdir /app
WORKDIR /app
COPY /target/kube-lab-0.0.1-SNAPSHOT.jar /app/app.jar
CMD ["java", "-jar", "app.jar"]
