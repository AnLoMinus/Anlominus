#!/bin/bash
# script to scan the network and return dns names.

#List a IP network to scan
#net="216.93.158."
#net="192.168.2."
net="192.168.3."

#loop through the ip network
for ip in `seq 1 254`
do
	ping -c1 ${net}${ip} >> 192.168.3.pings

done

#and print the correspondng hostname


