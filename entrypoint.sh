#!/bin/sh -l

echo "hello world"

pwd

echo "Building the java project"
mvn clean install -f /app/pom.xml

echo "copy jar to local runner"
cp /app/target/java-custom-action-1.0-SNAPSHOT.jar $(pwd)

echo "Running Java Program"
java -jar /app/target/java-custom-action-1.0-SNAPSHOT.jar

echo "time=$(date)" >> $GITHUB_OUTPUT