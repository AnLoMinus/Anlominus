#!/bin/bash

# Store menu options selected by the user
INPUT=/tmp/menu.sh.$$

# Storage file for displaying cal and date command output
OUTPUT=/tmp/output.sh.$$

# trap and delete temp files
trap "rm $OUTPUT; rm $INPUT; exit" SIGHUP SIGINT SIGTERM

# script location
MYDIR="$(pwd "$0")"
MYSCRIPTSDIR="$MYDIR"/actions

# https://askubuntu.com/questions/345974/what-is-the-difference-between-adduser-and-useradd
# useradd, usermod, and userdel - binaries compiled with the system
# adduser, deluser - perl script (uses useradd, userdel) - debian only ?

# log all errors
ERRORLOG="$MYDIR"/error_log
exec 2> $ERRORLOG

BTITLE="Linux User Manager"
#
# Purpose - display output using msgbox
#  $1 -> set msgbox height
#  $2 -> set msgbox width
#  $3 -> set msgbox title
#
function display_output(){
  local h=${1-10}      # box height default 10
  local w=${2-41}     # box width default 41
  local t=${3-Output}   # box title
  # dialog --backtitle "Linux Shell Script Tutorial" --title "${t}" --clear --msgbox "$(<$OUTPUT)" ${h} ${w}
}

# include action scripts
. $MYSCRIPTSDIR/utils.sh
. $MYSCRIPTSDIR/all_users.sh
. $MYSCRIPTSDIR/all_groups.sh
. $MYSCRIPTSDIR/groups_for_user.sh
. $MYSCRIPTSDIR/users_in_group.sh
. $MYSCRIPTSDIR/add_user.sh
. $MYSCRIPTSDIR/add_group.sh
. $MYSCRIPTSDIR/change_user_secondary_groups.sh
. $MYSCRIPTSDIR/change_user_primary_group.sh
. $MYSCRIPTSDIR/delete_user.sh
. $MYSCRIPTSDIR/delete_group.sh

# check for root permissions
if [ "$EUID" -ne 0 ]; then
  echo "You are not root!\nYou won't be able to do any modification." >$OUTPUT
  display_output 8 60 "Warning !"
fi


#
# set infinite loop
#
while true
do

  ### display main menu ###
  dialog --clear --backtitle "$BTITLE" \
  --title "[ M A I N - M E N U ]" \
  --cancel-label "Exit" \
  --menu "Choose an option" 21 60 21 \
  "All Users" "List all the users" \
  "All Groups" "List all the groups" \
  "User groups" "List the groups of a user" \
  "Group with users" "List the users of a group" \
  "-----" "-----" \
  "Add user" "Add a normal user" \
  "Add group" "Add a group" \
  "Add system user" "Without home, shell, login" \
  "Add system group" "Add a system group" \
  "-" "-" \
  "Change groups" "Change the groups a user is in" \
  "Change primary group" "Change a user primary group" \
  "Delete user" "Delete a user" \
  "Delete group" "Delete a group" 2>"${INPUT}"

  if test $? -eq 0
  then
    #  echo "ok pressed"
    menuitem=$(<"${INPUT}")
  else
    #  echo "cancel pressed"
     menuitem="Exit"
  fi

  # make decsion
  case $menuitem in 
    "All Users") all_users;;
    "All Groups") all_groups;;
    "User groups") groups_for_user;;
    "Group with users") users_in_group;;
    "Add user") add_user;;
    "Add system user") add_user "sys";;
    "Add group") add_group;;
    "Add system group") add_group "sys";;
    "Change groups") change_secondary_groups;;
    "Change primary group") change_primary_group;;
    "Delete user") delete_user;;
    "Delete group") delete_group;;
    Exit) echo "Bye"; break;;
  esac

done

if [ -s $ERRORLOG ]; then
  echo "--- Error Log ---"
  cat $ERRORLOG
fi
if [ -f $ERRORLOG ]; then
  rm $ERRORLOG
fi
# if temp files found, delete em
[ -f $OUTPUT ] && rm $OUTPUT
[ -f $INPUT ] && rm $INPUT
