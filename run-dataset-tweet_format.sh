#!/usr/bin/env bash
# 进入工作目录
# cd "/opt/zequnyu/tweet/"
days=$(seq -f "%02g" ${1} ${30})
for day in ${days[@]}
do
echo ${day}
done