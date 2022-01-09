#!/bin/bash
# Check if netstat is an installed package.

function netstat_check(){
  if ! which netstat &> /dev/null; then
  printf "%s\n" "ERROR: Please install net-tools or make sure it is in your path."
  exit 1
fi
}

netstat_check
