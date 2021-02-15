#!/usr/bin/env bash
path="/opt/service/spark/slidingwindow"

cd ${path};git pull;mvn clean install -DskipTests -pl sliding

echo "更新完毕"