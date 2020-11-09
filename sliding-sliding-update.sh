#!/usr/bin/env bash

cd "/opt/service/spark/slidingwindow" &&  git pull && mvn clean install -DskipTests -pl sliding