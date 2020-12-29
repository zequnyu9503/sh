#!/bin/bash

mainClass="pers.yzq.spark.datasets.LocalHandler"
java -Xmx8G -classpath /opt/service/spark/spark-app/target/spark-2.0.jar;/opt/service/local/com/google/guava/guava/14.0.1/guava-14.0.1.jar ${mainClass}