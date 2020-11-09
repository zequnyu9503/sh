#!/bin/bash
master="node6"
slaves=("node7" "node8" "node9" "node10" "node11" )

ssh root@${master} "chmod 777 /opt/service/spark/spark-2.4.4/sbin/* && chmod 777 /opt/service/spark/spark-2.4.4/bin/*"

for slave in ${slaves[@]}
do
    # ssh root@${slave} "cd /opt && mkdir service && mkdir zequnyu && cd service && mkdir local && mkdir spark"
    # ssh root@${slave} "cd /opt/service && mkdir datanode && mkdir namenode"
    # scp -r "/opt/service/hadoop-2.8.5" "root@${slave}:/opt/service/"
    # scp -r "/opt/service/jdk1.8.0_261" "root@${slave}:/opt/service/"
    # scp -r "/opt/service/maven-3.6.3" "root@${slave}:/opt/service/"
    # scp -r "/opt/service/scala-2.11.12" "root@${slave}:/opt/service/"
    # scp -r "/opt/service/spark/spark-2.4.4" "root@${slave}:/opt/service/spark/"
    # scp -r "/opt/service/spark" "root@${slave}:/opt/service/"
    # ssh root@${slave} "cd /opt/service/ && rm -rf spark && mkdir -p spark/spark-local"
    # scp -r "/opt/service/spark/spark-2.4.4" "root@${slave}:/opt/service/spark"
    # ssh root@${slave} "chmod 777 /opt/service/spark/spark-2.4.4/sbin/* && chmod 777 /opt/service/spark/spark-2.4.4/bin/*"

    # scp /root/.bashrc "root@${slave}:/root/"
    # ssh root@${slave} "source /root/.bashrc"
done