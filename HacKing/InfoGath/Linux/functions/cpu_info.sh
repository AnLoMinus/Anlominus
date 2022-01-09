#!/bin/bash 
# CPU: model, sockets, cores

#### Print header ####

write_header() {
  local name=$1; shift;
  printf "%s""--------------------\\n$name%s\\n--------------------\\n"
  printf "%s" "$@"
}

#### Print info ####

write_info() {
  local name=$1; shift;
  printf "%s""$name%s"
  printf "%s\\n" "$@"
}

#### Get info about CPU ####

cpu_model() {
  # Query lscpu for: `Model name`
 
  local model=$(lscpu |grep --word-regexp 'Model name:') 
  write_info "${model}" 
}

cpu_socket() { 
  # query lscpu for: `Sockets`

  local socket=$(lscpu |grep --word-regexp 'Socket(s):')
  write_info "${socket}"
}

cpu_cores() { 
  # query lscpu for: `Cores`
  
  local cores=$(lscpu |grep --word-regexp 'Core(s) per socket:')
  write_info "${cores}" 
} 

cpu_info() { 
  # wrapper function 

  write_header "CPU INFO" "${cpu_info}"
  
  cpu_model
  cpu_socket
  cpu_cores
} 

cpu_info 
