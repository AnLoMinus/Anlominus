#!/usr/bin/bash
# Get top 10 dirs by size 

write_info() { 
  # header 

  local name=$1; shift; 
  printf "%s" "$name%s" 
  printf "%s\\n" "$@"  
}

dir_hogs() {
  # Retrieve top 10 disk-eating directories

  printf "%s\\n" "Searching..."

  # scan file system from / for directories; output background noise to: /dev/null; pv for progress 
  
  local largestdirs=$(find / -type d -exec du --separate-dirs --human-readable {} + 2>/dev/null |pv)

  printf "%s\\n" "${largestdirs}" |sort --reverse --human |uniq |head --lines=10 

} 

dir_hogs 
