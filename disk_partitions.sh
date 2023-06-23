#!/bin/bash

lsblk -b -o NAME,SIZE | awk '{if ($2 != "0") {print $0}}' | while read -r name size; do
  size_mb=$((size/1024/1024))
  echo "Disk/Partition: $name, Size: ${size_mb}MB"
done
