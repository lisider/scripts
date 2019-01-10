#!/bin/bash
start_time=`date --date='0 days ago' "+%Y-%m-%d %H:%M:%S"`
#this is your shell script
for((i=1;i<=400;i++));do echo $(expr $i \* 4);done
##############
finish_time=`date --date='0 days ago' "+%Y-%m-%d %H:%M:%S"`
duration=$(($(($(date +%s -d "$finish_time")-$(date +%s -d "$start_time")))))
echo "this shell script execution duration: $duration"
