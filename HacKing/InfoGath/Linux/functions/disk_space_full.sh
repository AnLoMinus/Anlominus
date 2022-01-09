#!/bin/bash 
# Disk space, and top 10 (by size) files & dirs


#### Print header ####

write_header() {
  local name=$1; shift;
  printf "%s""--------------------\\n$name%s\\n--------------------\\n"
  printf "%s" "$@"
}

#### Print info ####

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

file_hogs() {
  # Retrieve top 10 disk-eating files  

  printf "%s\\n" "Searching..."

  # scan file system from / for files; output background noise to: /dev/null; pv for progress 
  local largestfiles=$(find / -type f -exec du --separate-dirs --human-readable {} + 2>/dev/null |pv)
  
  printf "%s\\n" "${largestfiles}" |sort --reverse --human |head --lines=10 

}

dir_hogs() {
  # Retrieve top 10 disk-eating directories

  printf "%s\\n" "Searching..."

  # scan file system from / for directories; output background noise to: /dev/null; pv for progress 
  
  local largestdirs=$(find / -type d -exec du --separate-dirs --human-readable {} + 2>/dev/null |pv)

  printf "%s\\n" "${largestdirs}" |sort --reverse --human |uniq |head --lines=10 

} 

disk_info() { 
  # wrapper info 

  write_header "DISK INFO" "${disk_info}"
  
  disk_usage
  file_hogs
  dir_hogs  

}

disk_info  
