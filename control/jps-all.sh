#!/usr/bin/env bash
slaves=("node1" "node7" "node8" "node9" "node10" "node11" "node12" "node13" "node14" "node15")

for slave in ${slaves[@]}
 do
  echo -e "${slave} jps >>\n $(ssh root@${slave} jps)"
 done