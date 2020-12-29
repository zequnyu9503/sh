#!/bin/bash

mainClass="pers.yzq.spark.datasets.LocalHandler"
java -Xmx8G -classpath /opt/service/spark/spark-app/lib/* ${mainClass} -jar /opt/service/spark/spark-app/target/spark-2.0.jar