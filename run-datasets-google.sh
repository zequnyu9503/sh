#!/bin/bash
# 类名.
className=pers.yzq.spark.datasets.Google

spark-submit \
--master spark://node1:7079 \
--executor-memory 32g \
--executor-cores 24 \
--driver-cores 8 \
--class ${className} \
/opt/service/spark/spark-app/target/spark-2.0.jar