#!/usr/bin/env bash
path="/opt/service/spark/slidingwindow"
echo "只更新Core和Assembly"
cd ${path} && git pull && mvn clean install -DskipTests -pl core,assembly