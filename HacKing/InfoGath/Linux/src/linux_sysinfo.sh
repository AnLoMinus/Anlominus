#!/usr/bin/env bash 
#
# linux_sysinfo v.2.0 
#
# GNU/Linux system information.
#
# Author: M. Krinitz <mjk235 [at] nyu [dot] edu> 
# Date: 2018.08.07
# License: MIT
#
# This script builds on, and improves grabsysinfo.sh 
# attributed to Vivek Gite circa 2007.09.12.         

# PRELIMS

function pv_check(){
  # `pv` is used in `disk_hogs` for progress bar 
  # `which` to check for `pv` --> output to /dev/null
  # exit program if not installed 

  if ! which pv &> /dev/null; then 
  printf "%s\\n" "ERROR: PLEASE INSTALL PV OR ADD IT TO YOUR PATH." 

  exit 1
fi 
} 

# HEADERS

write_header() {
  # print header 

  local name=$1; shift;
  printf "%s""--------------------\\n$name%s\\n--------------------\\n"
  printf "%s" "$@"
}

write_info() {
  # print info 

  local name=$1; shift;
  printf "%s""$name%s"
  printf "%s\\n" "$@"
}

# MENU

show_menu() { 
  # display on-screen menu 

  date
  printf "%s\n" "------------------------------"
  printf "%s\n" "  LINUX SYSTEM INFO           " 
  printf "%s\n" "  MAIN MENU                   "
  printf "%s\n" "------------------------------"
    printf "%s\n" "  1. OS Info" 
    printf "%s\n" "  2. Hostname & DNS Info"
    printf "%s\n" "  3. Network Info"
    printf "%s\n" "  4. Who is Online"
    printf "%s\n" "  5. Last Logged in Users"
    printf "%s\n" "  6. CPU Info" 
    printf "%s\n" "  7. Free & Used Memory Info"
    printf "%s\n" "  8. Disk Usage" 
    printf "%s\n" "  9. Exit" 
}

read_input(){
  # get user input via keyboard and make a decision using case...esac 

  local c
  read -p "Enter your choice [ 1-9 ]:  " c
  case $c in
    1) os_info ;;
    2) host_info ;;
    3) net_info ;; 
    4) current_users ;;
    5) recent_users ;;
    6) cpu_info ;; 
    7) mem_info ;;
    8) disk_space;;
    9) printf "%s\n" "Ciao!"; exit 0 ;;
    *)
       printf "%s\n" "Select an Option (1 to 9):  "

       pause
esac 
}

pause() {
  # pause prompt 
  # suspend processing of script; display message prompting user to press [Enter] key to continue
  # $1-> Message (optional)
  
  local message="$@"
  [ -z $message ] && message="Press [Enter] key to continue:  "
  read -p "$message" readEnterKey            
}

# SYS INFO

# OS INFO
# kernel and operating system info

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

os_info() { 
  # wrapper
 
  write_header "SYSTEM INFO"   
  kernel_name
  kernel_release 
  os_name
  os_version
  pause
} 

# HOST INFO
# host & DNS info 

host_name() { 
  local host=$(hostname --short) 
  write_info "Hostname: ${host}" 
}

dns_domain() { 
  local dns=$(hostname --domain)
  write_info "DNS Domain: ${dns}" 
} 

fully_qualified() {
  local fqdn=$(hostname --fqdn) 
  write_info "Fully-qualified Domain Name: ${fqdn}"
} 

ip_address() { 
  local ip=$(hostname --ip-address) 
  write_info "Network Address (IP): ${ip}"
} 

dns_name() { 
  local search=$(awk '/^search/ {print $2}' /etc/resolv.conf)
  write_info "Domain Name Servers (DNS name): ${search}"
} 

dns_ips() { 
  local name_serv=$(awk '/^nameserver/ {print $2}' /etc/resolv.conf)
  write_info "Domain Name Servers (DNS IPs): ${name_serv}"
} 

host_info() { 
  # wrapper
 
  write_header "HOSTNAME & DNS INFO" 
  host_name
  dns_domain
  fully_qualified
  ip_address
  dns_name
  dns_ips
  pause
} 

# NET INFO
# network interfaces and routing 

network_interfaces() { 
  # number of network interfaces 

  local devices=$(ip -oneline link show |wc --lines) 
  printf "%s\\n" "${devices}"  	
}

ip_add_info() {
  # IP protocol addresses

  local ip_add=$(ip --family inet address show)
  printf "%s\\n" "${ip_add}"  
} 

network_routing() {
  # IP routing table  

  local route=$(netstat --route --numeric)
  printf "%s\\n" "${route}" 
} 

interface_traffic() {
  # status of interfaces on the network 

  local traffic=$(netstat --interfaces)
  printf "%s\\n" "${traffic}" 
} 

net_info() {
  # wrapper
 
  write_header "NETWORK INFO" 

  write_header "TOTAL NETWORK INTERFACES" 
  network_interfaces  
  
  write_header "IP ADDRESS INFO" 
  ip_add_info 
  
  write_header "NETWORK ROUTING" 
  network_routing  
  
  write_header "INTERFACE TRAFFIC INFO" 
  interface_traffic 

  pause 
} 

# CURRENT USERS
# logged in users 

who_is_on() { 
  # `who` built in 
  
  local whoo=$(who --heading) 
  printf "%s\\n" "${whoo}"
} 

current_users() { 
  # wrapper function 

  write_header "WHO IS ONLINE?"  

  who_is_on
 
  pause 
} 

# RECENT USERS
# list of recent logins 

ten_last() { 
  # `last` built-in; last 10 incl. host & dns 

  local lasty=$(last -n 10 -a -d)  
  printf "%s\\n" "${lasty}"   
} 

recent_users() { 
  # wrapper
 
  write_header "LAST 10 LOGINS" #"$user_info" 

  ten_last 

  pause 
} 

# CPU INFO
# info about CPU

cpu_model() {
  # query lscpu for: `Model name`
 
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
  # wrapper
 
  write_header "CPU INFO" "${cpu_info}"
  
  cpu_model
  cpu_socket
  cpu_cores 

  pause 
} 

# MEM INFO
# used and free memory  

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
  # wrapper
 
  write_header "MEMORY INFO" 

  write_header "FREE & USED MEMORY"
  ram_stats
  
  write_header "VIRTUAL MEMORY STATISTICS" 
  vram_stats

  write_header "TOP 10 MEMORY EATING PROCESS" 
  top_ram_eaters

  pause 
}

# DISK INFO
# info on free & used disk space 
# NOTE: this script was designed to run w/out eleveated privilieges,  
# BUT: if run-as a non-admin user, the results from `disk hogs`
# will be limited  

disk_usage() {
  # Retrieve file system info re: disk space

  local disk=$(df --human-readable --total |awk 'NR==1; END{print}')
  printf "%s\\n" "${disk}"
}
 
file_hogs() { 
  # top 10 disk-eating files 
 
  printf "%s\\n" "Searching..." 
  
  # scan file system from / for files; output background noise to /dev/null; pv for progress 
  local largestfiles=$(find / -type f -exec du --separate-dirs --human-readable {} + 2>/dev/null |pv)

  printf "%s\n" "${largestfiles}" |sort --reverse --human | head --lines=10
} 

dir_hogs() {
  # Retrieve top 10 disk-eating directories

  printf "%s\\n" "Searching..."

  # scan file system from / for directories; output background noise to: /dev/null; pv for progress

  local largestdirs=$(find / -type d -exec du --separate-dirs --human-readable {} + 2>/dev/null |pv)

  printf "%s\\n" "${largestdirs}" |sort --reverse --human |uniq |head --lines=10

}

disk_space() { 
  # wrapper  

  write_header "DISK INFO" 

  write_header "DISK USAGE" 
  disk_usage

  write_header "TOP 10 DISK-EATING FILES" 
  file_hogs  

  write_header "TOP 10 DISK-EATING DIRECTORIES"
  dir_hogs

  pause 
}

# Main

pv_check 
while true 
do 
    clear 
    show_menu   
    read_input  
done 
