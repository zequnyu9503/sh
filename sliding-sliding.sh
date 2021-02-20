#!/usr/bin/env bash
path="/opt/service/spark/slidingwindow"

cd ${path};git fetch -f;mvn clean install -Dmaven.wagon.http.ssl.insecure=true -Dmaven.wagon.http.ssl.allowall=true -Dmaven.wagon.http.ssl.ignore.validity.dates=true -DskipTests -pl sliding

echo "更新完毕"