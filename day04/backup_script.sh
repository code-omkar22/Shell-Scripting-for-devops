#!/bin/bash

source="/home/ec2-user/new"
destination="/home/ec2-user/backup"
date=$(date +%Y-%m-%d)

if [ -d "$source" ]; then
    mkdir -p "$destination" || {
        echo "Failed to create backup directory"
        exit 1
    }

    if tar -czf "$destination/backup_$date.tar.gz" -C "$source" .; then
        echo "Backup successful!"
    else
        echo "Backup failed!"
        exit 1
    fi
else
    echo "Source directory not found: $source"
    exit 1
fi
