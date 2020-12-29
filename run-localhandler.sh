#!/bin/bash

mainClass="pers.yzq.spark.datasets.LocalHandler"
java -Xmx8G ${mainClass} -jar /opt/service/spark/spark-app/target/spark-2.0.jar -Djava.ext.dirs=/opt/service/spark/spark-app/lib