#!/usr/bin/env bash
path="/opt/service/spark/slidingwindow"

cd ${path};git pull;mvn clean install -DskipTests -pl sliding -Dmaven.wagon.http.ssl.insecure=true -Dmaven.wagon.http.ssl.allowall=true -Dmaven.wagon.http.ssl.ignore.validity.dates=true

echo "更新完毕"