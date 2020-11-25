#!/bin/bash

date=$(date +"%d-%m-%Y")

LOCAL=/mnt/hdd0/dump/
REMOTE=b2:my-proxmox-server/vzdumps

LOG=/var/log/rclone.log

if [ "$1" == "job-end" ]; then
    rclone copy ${LOCAL} ${REMOTE}/$date/ --log-file=${LOG}
fi
