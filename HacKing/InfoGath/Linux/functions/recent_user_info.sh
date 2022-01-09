#!/bin/bash
# Last to logins
 
#### Print header ####

write_header() {
  local name=$1; shift;
  printf "%s""--------------------\\n$name%s\\n--------------------\\n"
  printf "%s" "$@"
}

#### Display a list of recently logged in users ####

ten_last() { 
  # `last` built-in; last 10 incl. host & dns 

  local lasty=$(last -n 10 -a -d)  
  ### verbose version for some versions of `last` --> (last --limit 10 --hostlast --dns) ### 
  
  printf "%s\\n" "${lasty}"   
} 

recent_users() { 
  # wrapper function 

  write_header "LAST 10 LOGINS" #"$user_info" 

  ten_last 
} 

recent_users
