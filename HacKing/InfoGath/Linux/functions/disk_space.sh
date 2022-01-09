#!/bin/bash 
# Disk space via df & parsing

write_info() {
  local name=$1; shift;
  printf "%s" "$name%s"
  printf "%s\\n" "$@"
}

disk_usage() {
  # Retrieve file system info re: disk space

  local disk=$(df --human-readable --total |awk 'NR==1; END{print}')
  write_info "Disk Space: ${disk}" 
}

disk_usage
