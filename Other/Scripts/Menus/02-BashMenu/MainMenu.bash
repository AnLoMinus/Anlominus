#!/bin/bash

# Create a bash menu to perform
# routine system admin task

# while loop to keep the menu open.
while true
do

	# Clear the screen to create
	# a fresh menu
	clear

	echo "##########################################"
	echo "################ MY MENU #################"
	echo "##########################################"
	echo ""
	echo "1) Go to Admin Menu"
	echo ""
	echo "2) Go to Security Menu."
	echo ""
	echo "3) Go to Log Menu"
        echo ""
	echo ""
	echo "e) Exit the menu"
	echo ""
	echo ""
	# Read in the value from the user
	read -p "Please enter a value[1-3]: " choice

	# case statement
	case ${choice} in
		1)
			bash AdminMenu.bash
			read -p "Please press [Enter] to continue" readEnterKey		;;

		2)
			bash SecMenu.bash
			read -p "Please press [Enter] to continue" readEnterKey		;;

		3)
    bash LogMenu.bash
    read -p "Please press [Enter] to continue" readEnterKey    ;;

		e)
			exit 0		;;

		*)
			echo "Invalid value provided! You'll be taken"
			echo "back to the main menu momentarily"
			sleep 3

		;;

	# end case statement
	esac

# end while loop
done
