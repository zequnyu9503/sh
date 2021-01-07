#!/bin/bash
origin=$(pwd)
path=/opt/service/spark/spark-app
cd ${path};git pull;mvn clean package dependency:copy-dependencies -DoutputDirectory=./lib;cd ${origin}