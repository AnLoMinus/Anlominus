#!/bin/bash
#Security Menu function
function security_menu() {
	# Clear the screen
	clear
	#create menu options
	echo "1. Last logged in users."
	echo "2. Print last 20 lines of file"
	echo "3. Command : lsof"
	echo "4. Detailed processes."
	echo "5. Return to main menu."
	echo "[E]xit"
	read -p "Please enter a value from above: " option
	case "${option}" in
	1) last |less
	;;
	2) tail -20 /var/log/dpkg.log
	;;
	3) lsof -i -n
	;;
	4) lsof -Pan -p 27808 
 
	;;
	5) main_menu
	;;
	"E")
	;;
	*) echo "Invalid Input"
		sleep 3
		security_menu
		;;
	esac
security_menu
}
# Admin Menu function
function admin_menu() {
        # Clear the screen
	clear
        # Create menu options
	echo "1. List Running Processes"
	echo "2. List all running services"
	echo "3. List all installed software"
	echo "4. List all users"
	echo "5. Return to main menu"
	echo "[E]xit"
        # Prompt for the menu option
	echo -n "Please enter a value above: "
        # Read in the user input
	read option
        # Case statement to process options
	case "${option}" in
		1) ps -ef |less
		;;
		2) service --status-all |less
		;;
		3) dpkg --get-selections |less
		;;
		4) cat /etc/passwd
		;;
		5) main_menu
		;;
		"E") exit 0
		;;
		*) echo "Invalid Input"
			sleep 3
			admin_menu
	# Stops the case statement
	esac
admin_menu
}
# admin_menu
# Main Menu
function main_menu() {
        # Clear the screen
	clear
        # Create menu options
	echo "1. SysAdmin Menu"
	echo "2. Security Menu"
	echo "[E]xit"
        # Prompt for the menu option and read in the option
	# echo -n "Please select a value from above: "
	read -p "Please enter a value from above: " option
	case "${option}" in
		1) admin_menu
		;;
		2) security_menu
		;;
		"E") exit 0
		;;
		*) echo "Invalid Input"
			sleep 3
			main_menu
		;;
		esac
}
# Call the main menu
main_menu
