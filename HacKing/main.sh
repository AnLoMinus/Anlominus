#!/usr/bin/sh bash
echo "$(pwd >> $PWD)"

#Colors
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

m1_1="[1] HacKing $nc"
m1_2="[2] Lazymux $nc"
m1_3="[3] Tool-X $nc"
m1_0="[0] exit $nc"

function Menu_1(){
  echo "$m1_1"
  echo "$m1_2"
  echo "$m1_3"
  echo "$m1_0"
}

while :
do
  Menu_1
  echo  "╭─Anlominus"
  read -p "╰──► Option:" INPUT_STRING;
  case $INPUT_STRING in
  menu)
  cd $PWD
    Menu
    ;;
  1)
  echo "$(clear)"
  echo -e "       $m1_1"
  cd $PWD
  bash HacKing.sh
    ;;
  2)
  echo -e "       $m1_2"
  echo "$(clear)"
  cd $PWD
  cd InstKits/Lazymux
  python3.7 lazymux.py
    ;;
  3)
  echo "$(clear)"
  echo -e "       $m1_3"
  cd $PWD
  cd InstKits/Tool-X
	python3 Tool-X.py
    ;;
  0)
  echo "$(clear)"
  exit
    ;;
  clear)
  echo "$(clear)"
    ;;
  *)
    ;;


  esac
done

}
