#!/bin/bash

mainClass="pers.yzq.spark.LocalHandler"
java -Xmx8G -cp /opt/service/spark/spark-app/target/spark-2.0.jar:/opt/service/spark/spark-app/lib/guava-14.0.1.jar ${mainClass}