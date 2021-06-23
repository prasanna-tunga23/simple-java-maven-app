FROM maven:latest
WORKDIR /app
COPY package.json /app
RUN mvn install
COPY . /app
CMD java -jar target/maven-docker-1.0.0-SNAPSHOT-jar-with-dependencies.jar
EXPOSE 8080
