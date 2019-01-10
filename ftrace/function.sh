#!/bin/bash



debugfs=/sys/kernel/debug

echo nop > $debugfs/tracing/current_tracer

echo 0 > $debugfs/tracing/tracing_on

echo $$ > $debugfs/tracing/set_ftrace_pid

echo function_graph > $debugfs/tracing/current_tracer

#replace test_proc_show by your function name

#echo test_proc_show > $debugfs/tracing/set_graph_function
echo device_create  > $debugfs/tracing/set_graph_function


echo 1 > $debugfs/tracing/tracing_on

exec "$@"

#cat /sys/kernel/debug/tracing/trace >1

#vim -S ./.fungraph-vim 1
