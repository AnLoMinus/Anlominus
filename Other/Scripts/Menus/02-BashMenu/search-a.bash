#!/bin/bash

echo -n "Would you like to Search for one Keyword or Multiple? [O or M] "



read Would

#print ""



if [ "$Would" == "O" ];

then
	echo -n  "What keyword would you like to search for? "

	read What

	#print ""


	egrep -i $What /var/log/apache2/access.log |awk ' BEGIN {format ="%-17s %-25s %-15s %-15s %-15s %-15s\n"

                printf format,  "IP", "Date/Time", "Method", "Resource", "Status Code", "Returned File Size"
                printf format, "----","---------","------","---------","------------","-------------------" }

                {printf format, $1, $4, $6, $8, $9, $10 }

				'

else

	#echo "else"
	echo -n "Enter the Terms you would like to Search for Seperate by a '|' "
	

	read Enter


	egrep -i $Enter /var/log/apache2/access.log |awk ' BEGIN {format ="%-17s %-25s %-15s %-15s %-15s %-15s\n"

                printf format,  "IP", "Date/Time", "Method", "Resource", "Status Code", "Returned File Size"
                printf format, "----","---------","------","---------","------------","-------------------" }

                {printf format, $1, $4, $6, $8, $9, $10 }

                                '

fi

