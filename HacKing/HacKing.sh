#!/usr/bin/env bash
###############################################
#     _   _            _  ___                 #
#    | | | | __ _  ___| |/ (_)_ __   __ _     #
#    | |_| |/ _' |/ __| ' /| | '_ \ / _' |    #
#    |  _  | (_| | (__| . \| | | | | (_| |    #
#    |_| |_|\__,_|\___|_|\_\_|_| |_|\__, |    #
#                                   |___/     #
###############################################
# Created: 10/01/2022
# Aouther: Global Anlominus RhytMix 2022
# Skils: Best Copyrigter IN the COSMOS!
# BIG THANX TO ALL COMUNITY THAT SHARE ALL THAT FREE GREAT SCRIPTS
# CREDIT: ToAllWorldCreatorsHackingTools
# Location: Made With Love IN Israel
# Tool Name: HacKing
# Source: https://github.com/Anlominus/HacKing
#
# Main Menu:
#  [1] AnonSurf: Anonymity surfing
#  [2] WebHack: Web Analysis
#  [3] VulnHack: Vulnerability Analysis
#  [4] WireLess: Wireless Analysis
#  [5] InfoGath: Information Gathering
#  [6] Forensics: Forensics Analysis
#  [7] FramXploit: Exploit Frameworks
#  [8] RAT: RemoteAccess
#  [9] HasHack: Hashing & Enctyprt Decrypt
#  [10] PayLoads: Payloads and more
#  [11] XInstKits: Installer Kits
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
    .'''''',,;;::cclooooDATOS0000Oxoooollllc,.......
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
n7="7"
n8="8"
n9="9"
n10="10"
n11="11"
n12="12"

################
#    VMenu     #
################
m1="$red[$green$n1$red]$nc$white AnonSurf:$cafe Anonymity surfing $nc"
m2="$red[$green$n2$red]$nc$white WebHack:$cafe Web Analysis $nc"
m3="$red[$green$n3$red]$nc$white VulnHack:$cafe Vulnerability Analysis $nc"
m4="$red[$green$n4$red]$nc$white WireLess:$cafe Wireless Analysis $nc"
m5="$red[$green$n5$red]$nc$white InfoGath:$cafe Information Gathering $nc"
m6="$red[$green$n6$red]$nc$white Forensics:$cafe Forensics Analysis $nc"
m7="$red[$green$n7$red]$nc$white FramXploit:$cafe Exploit Frameworks $nc"
m8="$red[$green$n8$red]$nc$white RAT:$cafe RemoteAccess $nc"
m9="$red[$green$n9$red]$nc$white HasHack:$cafe Hashing & Enctyprt Decrypt $nc"
m10="$red[$green$n10$red]$nc$white PayLoads:$cafe Payloads and more $nc"
m11="$red[$green$n11$red]$nc$white XInstKits:$cafe Installer Kits $nc"
m00="$red[$green$n00$red]$nc$white Exit $nc"
##################
#    VMenu_1     #
##################
m1_1="$red[$green$n1$red]$nc$white AnonSurf $nc"
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
        $m6
        $m7
        $m8
        $m9
        $m10
        $m11
        $m12
        $m13
        $m14
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
  	6)
    echo "$(clear)"
    echo -e "$m6"
    Menu_6
    ;;
  	7)
    echo "$(clear)"
    echo -e "$m7"
    Menu_7
  		;;
  	8)
    echo "$(clear)"
    echo -e "$m8"
    Menu_8
  		;;
  	9)
    echo "$(clear)"
    echo -e "$m9"
    Menu_9
  		;;
  	10)
    echo "$(clear)"
    echo -e "$m10"
    Menu_10
  		;;
  	11)
    echo "$(clear)"
    echo -e "$m11"
    Menu_11
  		;;
  	12)
    echo "$(clear)"
    echo -e "$m12"
    Menu_12
  		;;
  	13)
    echo "$(clear)"
    echo -e "$m13"
    Menu_13
  		;;
  	14)
    echo "$(clear)"
    echo -e "$m14"
    Menu_14
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
