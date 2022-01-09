#!/bin/bash
# Retrieve host & DNS info 
 
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

#### Get info about host & DNS ####

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
  # wrapper function 

  write_header "HOSTNAME & DNS INFO" 
  host_name
  dns_domain
  fully_qualified
  ip_address
  dns_name
  dns_ips
} 

host_info
