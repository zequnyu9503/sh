#!/usr/bin/env bash
days=$(seq -f "%02g" 1 ${30})
for day in ${days[@]}
do
    scp root@node6:/opt/zequnyu/data/raw/twitter_stream_2019_04_${day}.tar ./
done