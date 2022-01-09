#!/bin/bash 
# Retrieve kernel and operating system info

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

#### Get info about OS ####

kernel_name() {
  # kernel name 

  local kern=$(uname --kernel-name)
  write_info "Kernel Name: ${kern}" 
} 

kernel_release	() { 
  # kernel release
 
  local kernr=$(uname --kernel-release)
  write_info "Kernel Release: ${kernr}" 
} 

os_name() {
  # relase name  

  local name=$(awk '/^NAME=/' /etc/*-release |cut --delimiter=\" --field=2)
  write_info "OS Name: ${name}" 
}  

os_version() {
  # release version

  local version=$(awk '/^VERSION=/' /etc/*-release |cut --delimiter=\" --field=2)
  write_info "OS Version: ${version}" 
} 

#"$os_info" 

os_info() { 
  # wrapper function

  write_header "SYSTEM INFO"   
  kernel_name
  kernel_release 
  os_name
  os_version
} 

os_info 
