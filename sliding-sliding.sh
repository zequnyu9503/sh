#!/usr/bin/env bash
path="/opt/service/spark/slidingwindow"
lib="/opt/service/spark/lib"

cd ${path};git pull;mvn clean install -Dmaven.wagon.http.ssl.insecure=true -Dmaven.wagon.http.ssl.allowall=true -Dmaven.wagon.http.ssl.ignore.validity.dates=true -DskipTests -pl sliding dependency:copy-dependencies -DoutputDirectory=${lib}

echo "更新完毕"