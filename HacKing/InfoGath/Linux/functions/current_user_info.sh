#!/bin/bash
# Get logged-in users
 
#### Print header ####

write_header() {
  local name=$1; shift;
  printf "%s""--------------------\\n$name%s\\n--------------------\\n"
  printf "%s" "$@"
}

# Display current logged in users

who_is_on() { 
  # `who` built in 
  
  local whoo=$(who --heading) 
  printf "%s\\n" "${whoo}"
 
} 

current_user() { 
  # wrapper function 
  write_header "WHO IS ONLINE?"  

  who_is_on 
} 

current_user
