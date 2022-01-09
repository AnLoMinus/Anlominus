#!/bin/bash
# Retrieve info about network interfaces & routing

#### Print header ####

write_header() {
  local name=$1; shift;
  printf "%s""--------------------\\n$name%s\\n--------------------\\n"
  printf "%s" "$@"
}

#### Network Info ####

network_interfaces() {
  # Display number of network interfaces

  local devices=$(ip -oneline link show |wc --lines)
  printf "%s\\n" "${devices}"
}

ip_add_info() {
  # Display the IP protocol addresses

  local ip_add=$(ip --family inet address show)
  printf "%s\\n" "${ip_add}"
}

network_routing() {
  # Display the IP routing table

  local route=$(netstat -rn)
  printf "%s\\n" "${route}"
}

interface_traffic() {
  # Display status of interfaces on the network

  local traffic=$(netstat --interfaces)
  printf "%s\\n" "${traffic}"
}

net_info() {
  # wrapper function
  write_header "NETWORK INFO"

  write_header "TOTAL NETWORK INTERFACES"
  network_interfaces

  write_header "IP ADDRESS INFO"
  ip_add_info

  write_header "NETWORK ROUTING"
  network_routing

  write_header "INTERFACE TRAFFIC INFO"
  interface_traffic
}

net_info
