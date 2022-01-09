#!/bin/bash
# Check if pv is an installed package

function pv_check(){
  if ! which pv &> /dev/null; then 
  printf "%s\n" "ERROR: Please install pv or make sure it is in your path." 
  exit 1
fi 
} 

pv_check 
