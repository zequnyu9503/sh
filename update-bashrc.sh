#!/usr/bin/env bash
slaves=("node1" "node7" "node8" "node9" "node10" "node11")
param=$0

for slave in ${slaves[@]}
 do
  scp ././bashrc/node7_15 root@${slave}:/root/.bashrc
  ssh root@${slave} source /root/.bashrc
 done