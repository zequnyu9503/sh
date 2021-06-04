#!/bin/bash
mainClass="pers.yzq.spark.datasets.LocalHandler"
scala -classpath target/spark-2.0.jar ${mainClass} -Djava.ext.dirs=/home/zc/Documents/libs/target/dependency
