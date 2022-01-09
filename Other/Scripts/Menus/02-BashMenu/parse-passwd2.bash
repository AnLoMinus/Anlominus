#!/bin/bash


#script to parse passwd file
cat /etc/passwd |awk -F: ' BEGIN { format = "%-20s %-10s %-10s %-20s %s\n"

			printf format, "Username","UID","GID","Home Directory","Shell"
			printf format, "---------","----","-----","-------------","-----" }

			{printf format, $1, $3, $4, $6, $7} '
