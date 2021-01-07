#!/usr/bin/env bash
slaves=("node1" "node7" "node8" "node9" "node10" "node11")
param="node7_11"

for slave in ${slaves[@]}
 do
  scp ././bashrc/${param} root@${slave}:/root/.bashrc
  ssh root@${slave} source /root/.bashrc
 done