#!/usr/bin/env bash
# mvn dependency:copy-dependencies -DoutputDirectory=./libs
cur_dir=$(pwd)
sh_dir="/opt/zequn/sh"
cd ${sh_dir} && git pull && cd ${cur_dir}