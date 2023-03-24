#!/bin/sh -l

echo "hello world"

pwd

mvn clean install

java -jar target/java-custom-action-1.0-SNAPSHOT.jar

echo "time=$(date)" >> $GITHUB_OUTPUT