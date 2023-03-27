#!/bin/sh -l

echo "hello world"

pwd

echo "Building the java project"
mvn clean install -f /app/pom.xml

echo "Running Java Program"
java -jar /app/target/java-custom-action-1.0-SNAPSHOT.jar

echo "Docker hostname"
cat /etc/hostname

echo "Container list"
docker container ls

echo "time=$(date)" >> $GITHUB_OUTPUT
