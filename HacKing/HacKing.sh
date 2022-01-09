#!/usr/bin/env bash
###############################################
#     _   _            _  ___                 #
#    | | | | __ _  ___| |/ (_)_ __   __ _     #
#    | |_| |/ _' |/ __| ' /| | '_ \ / _' |    #
#    |  _  | (_| | (__| . \| | | | | (_| |    #
#    |_| |_|\__,_|\___|_|\_\_|_| |_|\__, |    #
#                                   |___/     #
###############################################
#
# Aouther: Anlominus 2022
# Location: Made With Love IN Israel
# Tool Name: HacKing
# Source: https://github.com/Anlominus/HacKing
#
# Features:
#   1. Anonymity: Tools for Anonymity and Privacy..
#   2. Information Gathering: Gathering information about Systems, Locally/Remotley ..
#   3. Vulnerability Analysis: Tools for Analysis services and Applications..
#   4. installer kits: Many other kits for installing Tools..
#
#
#
#
#     Algorithen:
#
#     #Banner
#     #VNumbers
#     #VColors
#     #VMenu
#     #ManBanner
#     #FMenu
#     #Misc
#
#
#
###############
#    Banner   #
###############
function Banner(){
echo ""
echo ""
echo -e "$red       ###############################################"
echo -e "       #     _   _            _  ___                 #"
echo "       #    | | | | __ _  ___| |/ (_)_ __   __ _     #"
echo "       #    | |_| |/ _' |/ __| ' /| | '_ \ / _' |    #"
echo "       #    |  _  | (_| | (__| . \| | | | | (_| |    #"
echo "       #    |_| |_|\__,_|\___|_|\_\_|_| |_|\__, |    #"
echo "       #                                   |___/     #"
echo -e "$red       ###############################################"
echo -e "  $red[$green+$red]$cyan Github: https://www.github.com/Anlominus/HacKing $red[$green+$red]$nc"

}

##################
#    ManBanner   #
##################
function ManBanner(){
echo -e "$purple
                           .
                       ..',,'..
                     .',,,,,,,,,.
                    .',,,'..',,,,'.
                   .',,'.     .,,,'
                  .',,.        .,,,.
                 .',..           .,,.
                 .'.              ..,.
                 .                  .'
                ..    $green Aภl๏miuภuຮ $purple   .
                ..                   .
                ..                  ...
         ....''''.     $blue HacKing$purple     .','''....
       .',,,,,,,,'..               ..',,,,,,,,'.
      ...'',,,,,,,'...          ....',,,,,,,,'...
     ....'',;;;;;;;,,'''......'''',,;;;;;;;,'''...
    ......'',,;;;:::cccllllooooooooooooollll:'.....
    .....'.'',,;;::ccloodxxxdddddddooooollll,.'....
    .......',,;;::clloddxkkkkxxxdddoooollllc,......
    .'''''',,;;::cclooooooxOkkkkkOxoooollllc,.......
   ..'''',',;;::ccclllooodk0xdddddxdoollllcc,'''''...
  ........';;::ccclllooodddxkkkkkkxdollllcc:'.........
 ......  .':::ccllloooodddxxxddddoddolllcc::'..  ......
 ......:.;:::ccllloooodddxxxddddooooollcc::;'c,':......
  .''..cc.''''''',,,,,,,;;;;;,,,,,,,,''''....:.cc..''.
"
echo -e "  $red[$green+$red]$cyan Github: https://www.github.com/Anlominus/HacKing $red[$green+$red]$nc"
}

################
#    VColors   #
################
white="\033[1;37m"
grey="\033[0;37m"
purple="\033[0;35m"
red="\033[1;31m"
green="\033[1;32m"
yellow="\033[1;33m"
purple="\033[0;35m"
cyan="\033[0;36m"
cafe="\033[0;33m"
fiuscha="\033[0;35m"
blue="\033[1;34m"
nc=""

#################
#    VNumbers   #
#################
n00="00"
n1="1"
n2="2"
n3="3"
n4="4"
n5="5"
n6="6"
nb="|b1|b2|"

################
#    VMenu     #
################
m1="$red[$green$n1$red]$nc$white Anonymity $nc"
m2="$red[$green$n2$red]$nc$white Information Gathering $nc"
m3="$red[$green$n3$red]$nc$white Vulnerability Analysis $nc"
m4="$red[$green$n4$red]$nc$white Web Application Analysis $nc"
m5="$red[$green$n5$red]$nc$white Installer Kits $nc"
mb="$red[$green$nb$red]$nc$white Print Banner $nc"
m00="$red[$green$n00$red]$nc$white Exit $nc"
##################
#    VMenu_1     #
##################
m1_1="$red[$green$n1$red]$nc$white Anonymity $nc"
m1_2="$red[$green$n2$red]$nc$white Lazymux $nc"
m1_3="$red[$green$n3$red]$nc$white Tool-X $nc"
m1_0="$red[$green$n00$red]$nc$white Exit $nc"
##################
#    VMenu_2     #
##################
m2_1="$red[$green$n1$red]$nc$white Devices Information $nc"
m2_2="$red[$green$n2$red]$nc$white Th3inspector $nc"
m2_3="$red[$green$n3$red]$nc$white Mercury $nc"
m2_4="$red[$green$n4$red]$nc$white 000000 $nc"
m2_0="$red[$green$n00$red]$nc$white Exit $nc"
##################
#    VMenu_3     #
##################
m3_1="$red[$green$n1$red]$nc$white HacKing $nc"
m3_2="$red[$green$n2$red]$nc$white Lazymux $nc"
m3_3="$red[$green$n3$red]$nc$white Tool-X $nc"
m3_0="$red[$green$n00$red]$nc$white Exit $nc"
##################
#    VMenu_4     #
##################
m4_1="$red[$green$n1$red]$nc$white HacKing $nc"
m4_2="$red[$green$n2$red]$nc$white Lazymux $nc"
m4_3="$red[$green$n3$red]$nc$white Tool-X $nc"
m4_0="$red[$green$n00$red]$nc$white Exit $nc"
##################
#    VMenu_5     #
##################
m5_1="$red[$green$n1$red]$nc$white HacKing $nc"
m5_2="$red[$green$n2$red]$nc$white Lazymux $nc"
m5_3="$red[$green$n3$red]$nc$white Tool-X $nc"
m5_4="$red[$green$n4$red]$nc$white DarkArmy $nc"
m5_5="$red[$green$n5$red]$nc$white Fsociety $nc"
m5_0="$red[$green$n00$red]$nc$white Exit $nc"


################
#    FMenu     #
################
function Menu() {
	echo -e "\n
        $red[$green#############$red]$nc$white $nc
        $red[$green#$cyan Main Menu $green#$red]$nc$white $nc
        $red[$green#############$red]$nc$white $nc\n
        $m1
        $m2
        $m3
        $m4
        $m5
\n    $m00
"
  while :
  do
    echo  "╭─Anlominus"
    read -p "╰──► Option:" INPUT_STRING;
    case $INPUT_STRING in
  	menu)
      Banner
      Menu
  		;;
  	1)
    echo "$(clear)"
    echo -e "$m1"
    Menu_1
    ;;
  	2)
    echo "$(clear)"
    echo -e "$m2"
    Menu_2
  		;;
  	3)
    echo "$(clear)"
    echo -e "$m3"
    Menu_3
  		;;
  	4)
    echo "$(clear)"
    echo -e "$m4"
    Menu_4
  		;;
  	5)
    echo "$(clear)"
    echo -e "$m5"
    Menu_5
  		;;
  	b1)
    echo "$(clear)"
    echo -e "$mb"
  	Banner
    ;;
  	b2)
    echo "$(clear)"
    echo -e "$mb"
  	ManBanner
    ;;
  	00)
    echo "$(clear)"
  	exit
    ;;


###############
#    Misc     #
###############
    hello)
    	echo -e "Hello $USER !"
    	;;
    clear)
    	echo "$(clear)"
      Menu
    	;;
    user)
    	echo -e " $USER !"
    	;;
    banner)
    	Banner
      ManBanner
    	;;
  	bye)
  		echo -e "See you again!"
      exit
  		;;
  	exit)
  		echo -e "See you again!"
  		exit
  		;;
  	*)
    	echo -e "$red Sorry, I dont understand."
      echo "$(clear)"
      Banner
      Menu
  		;;
    esac
  done

}
################
#    FMenu_1   #
################
function Menu_1() {
	echo -e "\n
        $red[$green#############$red]$nc$white $nc
        $red[$green#$cyan Anonymity $green#$red]$nc$white $nc
        $red[$green#############$red]$nc$white $nc\n
\n      $m00
"
  while :
  do
    echo  "╭─Anlominus"
    read -p "╰──► Option:" INPUT_STRING;
    case $INPUT_STRING in
  	menu)
      Banner
      Menu_1
  		;;
  	1)
    echo "$(clear)"
    echo -e "$m1_1"
    ;;
  	2)
    echo "$(clear)"
    echo -e "$m2"
  		;;
  	3)
    echo "$(clear)"
    echo -e "$m3"
  		;;
  	4)
    echo "$(clear)"
    echo -e "$m4"
  		;;
  	5)
    echo "$(clear)"
    echo -e "$m5"
    Menu_5
  		;;
  	6)
    echo "$(clear)"
    echo -e "$m5"
  		;;


###############
#    Misc     #
###############
    clear)
    	echo "$(clear)"
      Menu
    	;;
    banner)
    	Banner
      ManBanner
    	;;
  	exit)
  		echo -e "See you again!"
  		exit
  		;;
    00)
      echo "$(clear)"
    	Menu
      ;;
  	*)
    	echo -e "$red Sorry, I dont understand."
      echo "$(clear)"
      Menu_1
  		;;
    esac
  done

}

##################
#    FMenu_2     #
##################
function Menu_2(){
  Banner
  echo -e "\n
  $red[$green#########################$red]$nc$white $nc
  $red[$green#$cyan Information Gathering $green#$red]$nc$white $nc
  $red[$green#########################$red]$nc$white $nc\n
        $m2_1
        $m2_2
        $m2_3
\n      $m2_0\n"


  while :
  do
      echo  "╭─Anlominus"
      read -p "╰──► Option:" INPUT_STRING;
    case $INPUT_STRING in
    menu)
      ;;
    1)
      echo "$(clear)"
      bash Infogath/SystInfo.sh
    ;;
    2)
      echo "$(clear)"
      # chmod +x InfoGath/Th3inspector/install.sh && ./InfoGath/Th3inspector/install.sh
      perl ./InfoGath/Th3inspector/Th3inspector.pl
    ;;
    3)
      echo "$(clear)"
      python3.7 ./InfoGath/Mercury/Mercury.py
    ;;
    00)
      echo "$(clear)"
    	Menu
      ;;
    *)
      echo -e "$red Sorry, I dont understand."
      echo "$(clear)"
      Menu_2
    ;;
    esac
  done

}
##################
#    FMenu_3     #
##################
function Menu_3(){
  Banner
  echo -e "\n
  $red[$green#################$red]$nc$white $nc
  $red[$green#$cyan InstKits Menu $green#$red]$nc$white $nc
  $red[$green#################$red]$nc$white $nc\n
        $m5_1
        $m5_2
        $m5_3
\n      $m5_0\n"


  while :
  do
      echo  "╭─Anlominus"
      read -p "╰──► Option:" INPUT_STRING;
    case $INPUT_STRING in
    menu)
      ;;
    1)
      echo "$(clear)"
      bash HacKing.sh
    ;;
    2)
      echo "$(clear)"
      python InstKits/Lazymux/lazymux.py
    ;;
    3)
      echo "$(clear)"
      python3.7 InstKits/Tool-X/Tool-X.py
    ;;
    00)
      echo "$(clear)"
    	Menu
      ;;
    *)
      echo -e "$red Sorry, I dont understand."
      echo "$(clear)"
      Menu_3
    ;;
    esac
  done

}
##################
#    FMenu_4     #
##################
function Menu_4(){
  Banner
  echo -e "\n
  $red[$green#################$red]$nc$white $nc
  $red[$green#$cyan InstKits Menu $green#$red]$nc$white $nc
  $red[$green#################$red]$nc$white $nc\n
        $m5_1
        $m5_2
        $m5_3
\n      $m5_0\n"

  while :
  do
      echo  "╭─Anlominus"
      read -p "╰──► Option:" INPUT_STRING;
    case $INPUT_STRING in
    menu)
      ;;
    1)
      echo "$(clear)"
      bash HacKing.sh
    ;;
    2)
      echo "$(clear)"
      python InstKits/Lazymux/lazymux.py
    ;;
    3)
      echo "$(clear)"
      python3.7 InstKits/Tool-X/Tool-X.py
    ;;
    00)
      echo "$(clear)"
    	Menu
      ;;
    *)
      echo -e "$red Sorry, I dont understand."
      echo "$(clear)"
      Menu_4
    ;;
    esac
  done

}
##################
#    FMenu_5     #
##################
function Menu_5(){
  Banner
  echo -e "\n
  $red[$green##################$red]$nc$white $nc
  $red[$green#$cyan Installer Kits $green#$red]$nc$white $nc
  $red[$green##################$red]$nc$white $nc\n
        $m5_1
        $m5_2
        $m5_3
        $m5_4
        $m5_5
\n      $m5_0\n"

  while :
  do
      echo  "╭─Anlominus"
      read -p "╰──► Option:" INPUT_STRING;
    case $INPUT_STRING in
    menu)
      ;;
    1)
      echo "$(clear)"
      bash HacKing.sh
    ;;
    2)
      echo "$(clear)"
      python3.7 InstKits/Lazymux/lazymux.py
    ;;
    3)
      echo "$(clear)"
      python3.7 InstKits/Tool-X/Tool-X.py
    ;;
    4)
      echo "$(clear)"
      python ./DarkArmy/darkarmy.py
    ;;
    5)
      echo "$(clear)"
      python ./InstKits/FsocIety/fsociety.py
    ;;
    00)
      echo "$(clear)"
    	Menu
      ;;
    *)
      echo -e "$red Sorry, I dont understand."
      echo "$(clear)"
      Menu_5
    ;;
    esac
  done

}

Menu
