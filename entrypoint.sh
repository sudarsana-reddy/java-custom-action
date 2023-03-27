#!/bin/sh -l

echo "hello world"

pwd

mvn clean install -f /app/pom.xml

java -jar /app/target/java-custom-action-1.0-SNAPSHOT.jar

echo "time=$(date)" >> $GITHUB_OUTPUT