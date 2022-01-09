#!/bin/bash
# Template for the creation of header and print info  

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

#### Describe function ####

sum_function() {
  # Sum description 

  local summy=$(printf "%s\\n" "I do something!!!") 
  write_info "Print Some Function's Result: ${summy}"
}

template() { 
  # wrapper function 

  write_header "SOME COOL STUFF" "${template}" 
  sum_function     
}

template
