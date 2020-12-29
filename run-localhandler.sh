#!/bin/bash
mainClass="pers.yzq.spark.hbase.Common.US_Traffic_2015_H"
scala -classpath /opt/service/spark/spark-app/target/spark-2.0.jar ${mainClass}
#-Djava.ext.dirs=
