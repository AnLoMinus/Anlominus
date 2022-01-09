#!/bin/bash
# script will check to see if a package is installed

#create a varibe to store the
#results of the output from the cmd.

echo -n "Please enter a package name to Search for:"

#read will take in user input

read toSearch

#varibles=value with no spaces
#these are ticks no quotes
package=`dpkg -l|grep "${toSearch}"`

#Search the output for the application
#print if it does or doesnt exist
#echo"${package}"

if [ "${package}" != "" ]

then
	echo "${toSearch} is installed."

else

	echo "${toSearch} is not installed."
fi
#fi means end of if statement
