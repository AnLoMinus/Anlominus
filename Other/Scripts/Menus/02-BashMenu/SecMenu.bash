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
	echo "######### Sec MENU #################"
	echo "###################################"
	echo ""
	echo "1) Show last 10 logged in Users"
	echo "2) Show open Network Sockets"
	echo "3) Parse Passwd File"
	echo "4) Search Apache Log"
	echo "w) Go back to Main menu"
	echo "e) Exit the menu"

	# Read in the value from the user
	read -p "Please enter a value[1-3]: " choice
	echo ""
	# case statement
	case ${choice} in
		1)
			printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
                        echo""
			last -adx -10
			printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
                        echo""
			read -p "Please press [Enter] to continue" readEnterKey
		;;

		2)
			printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
                        echo""
			netstat -anp --inet|less
			printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
                        echo""
			read -p "Please press [Enter] to continue" readEnterKey

		;;

		3)

			printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
                        echo""
			bash parse-passwd2.bash
			printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
                        echo""
			read -p "Please press [Enter] to continue" readEnterKey
		;;

		 4)

                        printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
                        echo""
                        bash search-a.bash
                        printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
                        echo""
                        read -p "Please press [Enter] to continue" readEnterKey
                ;;









		e)
			exit 0

		;;

		w)
			/home/joe/BashMenu/MainMenu.bash

		;;
		*)
			printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
                        echo""
			echo "Invalid value provided! You'll be taken"
			echo "back to the main menu momentarily"
			printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
                        echo""
			sleep 3

		;;

	# end case statement
	esac

# end while loop
done
