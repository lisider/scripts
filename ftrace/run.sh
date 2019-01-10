#########################################################################
# File Name: run.sh
# Author: Sues
# mail: sumory.kaka@foxmail.com
# Created Time: Wed 09 Jan 2019 10:18:34 PM PST
# Version : 1.0
#########################################################################
#!/bin/bash
sudo ./function.sh insmod ../class_test/class_test.ko
#sleep 1
sudo cat /sys/kernel/debug/tracing/trace > out.trace
vim -S ./.fungraph-vim out.trace


# 镜像位置 https://packages.ubuntu.com/en/xenial/linux-image-4.4.0-31-generic
# 内核版本 http://archive.ubuntu.com/ubuntu/pool/main/l/linux/linux_4.4.0.orig.tar.gz

