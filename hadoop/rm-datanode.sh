#!/usr/bin/env bash
#!/usr/bin/env bash
slaves=("node7" "node8" "node9" "node10" "node11" "node12" "node13" "node14" "node15")

for slave in ${slaves[@]}
 do
  ssh root@${slave} rm -rf /opt/service/datanode/*
 done
