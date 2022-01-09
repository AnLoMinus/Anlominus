#!/bin/bash 
# Free and used memory info 

#### Print header ####

write_header() {
  local name=$1; shift;
  printf "%s""--------------------\\n$name%s\\n--------------------\\n"
  printf "%s" "$@"
}

#### RAM Stats ####

ram_stats() {
  # display free & used memory 

  local ram=$(free --giga --human) 
  printf "%s\\n" "${ram}" 
}

vram_stats() {
  # display virtual memory 

  local vram=$(vmstat) 
  printf "%s\\n" "${vram}"
}

top_ram_eaters() {
  # regex ps to define, extract, and sort top memory (then cpu) consuming processes  

  local hungry_ram=$(ps -Ao user,pid,pcpu,pmem,stat,command --sort=-%mem,-%cpu |\
  head -11 |awk '{print $1, $2, $3, $4, $5, $6, $7}')  
   
  printf "%s\\n" "${hungry_ram}"  
}

mem_info() { 
  # wrapper function 

  write_header "MEMORY INFO" 

  write_header "FREE & USED MEMORY"
  ram_stats
  
  write_header "VIRTUAL MEMORY STATISTICS" 
  vram_stats

  write_header "TOP 10 MEMORY EATING PROCESS" 
  top_ram_eaters
}

mem_info
