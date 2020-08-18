#!/bin/bash
# 确保根目录和输出目录存在.
base_dir="/opt/zequnyu/data/"
store="/opt/zequnyu/data/2019-04/"
n=0

for d in {100..101}
do
 tar -xf ${base_dir}"twitter_stream_2019_04_"${d:1}".tar" -C ${base_dir}
 let n=0
 # 进入day目录
 cd ${base_dir}${d:1}
 # 遍历子目录
 for dir in $(ls ./)
 do
  # 进入子目录
  cd ${dir}
  # 遍历所有子文件
  for file in $(ls ./)
  do
   # 仅解压
   bunzip2 $(pwd)/${file}
  done
  for file in $(ls ./)
  do
   # 拷贝至最终文件
   #cp $(pwd)/${file} ${store}"2019-4-"${d:1}"-"${n}".json"
   cat $(pwd)/${file} >> ${store}"2019-4-"${d:1}".json"
   echo day ${d:1} fraction ${n} was handled. 
   let n=n+1
  done
  # 退出子目录
  cd ../
 done
 echo day ${d:1} was handled.
 # 退出day目录
 cd ../
 # 删除解压目录
 rm -r ${base_dir}${d:1}
done
