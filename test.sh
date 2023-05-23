#!/bin/bash
LINUX=$(uname -rs)
MY_ID=$(id -u)
MY_GID=$(id -g)
echo /userspace -U "0 $MY_ID 1" -G "0 $MY_GID 1" sh
./userspace -p -m -U -M "0 $MY_ID 1" -G "0 $MY_GID 1" /bin/bash
