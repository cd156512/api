#!/bin/bash

# 定义进程名称
PROCESS_NAME="main.go"

# 结束进程
echo "Killing process $PROCESS_NAME..."
killall $PROCESS_NAME

# 等待一段时间确保进程已经被结束
sleep 2

# 启动进程
echo "Starting process $PROCESS_NAME..."
cd /www/wwwroot/api
./$PROCESS_NAME &

echo "Process $PROCESS_NAME started."
