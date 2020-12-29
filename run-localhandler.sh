#!/bin/bash

mainClass="pers.yzq.spark.datasets.LocalHandler"
java -Xmx8G -jar /opt/service/spark/spark-app/target/spark-2.0.jar ${mainClass} -Djava.ext.dirs=/opt/service/spark/spark-app/lib