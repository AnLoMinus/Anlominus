#!/bin/bash

# Create a bash menu to perform
# routine system admin task


# while loop to keep the menu open.
while true
do

	# Clear the screen to create
	# a fresh menu
	clear

	echo "###################################"
	echo "######### Admin MENU ##############"
	echo "###################################"
	echo ""
	echo "1) What User am I?"
	echo "2) Ping Google DNS."
	echo "3) Show System Memory"
	echo "4) Search for installed Programs"
	echo "w) Go back to Main menu"
	echo "e) Exit the menu"
	echo ""
	# Read in the value from the user
	read -p "Please enter an Input: " choice
	echo ""
	# case statement
	case ${choice} in
		1)
			printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
			echo""
			whoami
			echo""
			printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
                        echo""
			read -p "Please press [Enter] to continue" readEnterKey
		;;

		2)
			printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
			echo ""
			ping -c5 8.8.8.8
			echo ""
			printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
                        echo""
			read -p "Please press [Enter] to continue" readEnterKey

		;;

		3)

			printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
			echo ""
			grep MemTotal /proc/meminfo
			echo ""
			printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
                        echo""
			read -p "Please press [Enter] to continue" readEnterKey
		;;

		4)



			printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
			echo ""
			bash appSearch.bash
			echo ""
			printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
                        echo""
			read -p "Please press [Enter] to continue" readEnterKey


		;;
		e)
			exit 0

		;;

		w)
			bash MainMenu.bash

		;;
		*)
			echo ""
			printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
                        echo""
			echo "Invalid value provided! You'll be taken"
			echo "back to the main menu momentarily"
			echo ""
			printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
                        echo""

			sleep 3

		;;
	# end case statement
	esac

# end while loop



done
