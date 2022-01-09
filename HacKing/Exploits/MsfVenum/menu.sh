menu(){
	echo "What do you want to PWN today"
	echo ""
	echo "Available Platforms :
	0) Windows
	1) Mac OSX
	2) Linux
	3) Web Platforms
	4) Android
	5) Other
	x) Exit
	"
	echo -n "What should I PWN ?: "
	read MENU

	case "$MENU" in
	 0) sh windows/menu.sh ;;
	 1) sh osx/menu.sh ;;
	 2) sh linux/menu.sh ;;
	 3) sh web/menu.sh ;;
	 4) sh android/menu.sh ;;
	 5) sh other/menu.sh ;;
	 'x'|'X') echo "Goodbye." && exit ;;
	 *) echo "${bold}That's not an answer!${none}\n" &&  menu ;;
	esac
	echo ""
	menu
}

menu
