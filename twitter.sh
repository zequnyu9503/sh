#!/bin/bash
# 确保根目录和输出目录存在.
base_dir="/opt/zequnyu/data/raw/"
store="/opt/zequnyu/data/2019-04/"
total=10

# 执行过程.
echo "解压缩文件数量从1到${total}"
days=$(seq -f "%02g" 1 ${total})
for day in ${days[@]}
do
    # 解压至根目录.
    tar -xf ${base_dir}"twitter_stream_2019_04_"${day}".tar" -C ${base_dir}
    # 进入day目录.
    cd ${base_dir}${day}
    # 遍历所有子目录.
    for dir in $(ls ./)
    do
        # 进入子目录.
        cd ${dir}
        # 遍历子目录下的所有文件.
        echo "开始解压: "
        for file in $(ls ./)
        do
            # 解压文件.
            bunzip2 $(pwd)/${file}
            printf "#"
        done
        # 所有文件解压完毕后拷贝.
        echo "\n解压完毕, 开始拷贝: "
        for file in $(ls ./)
        do
            cat $(pwd)/${file} >> ${store}"2019-4-"${day}".json"
            printf "#"
        done
        echo "\n拷贝完毕 "
        cd ../
    done
    # 退出day目录.
    cd ../
    # 删除解压后的文件夹.
    rm -rf ${base_dir}${day}
done
echo "任务完毕"