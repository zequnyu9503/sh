#!/bin/bash
mainClass="pers.yzq.sliding.dataset.BulkLoad_Tweet"
target="/opt/service/spark/slidingwindow/sliding/target/sliding-2.4.4.jar"
scala -classpath ${target} ${mainClass} -Djava.ext.dirs=