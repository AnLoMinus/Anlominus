#!/usr/bin/env bash
cat /var/log/httpd/access_log | awk '{print $1}' > ips.txt
uniq ips.txt > uniqips.txt
IPS=`cat uniqips.txt`
for i in $IPS
do
 

  echo "$i,`geoiplookup $i | cut -d "," -f2 | sed -e 's/^[\t]//'`" >> ipinfo.csv


# echo "$i, `geoiplookup $i | awk -F, 'NR==2{print $7, $8}' | sed -e 's/,//'`" >> ipinfo.csv
done
