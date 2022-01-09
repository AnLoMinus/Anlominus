#######################################################
#
#  Change the primary group a user is in
#
### -- external -- #################
# OUTPUT = file
# INPUT = file
# display_output = msgbox to display results
#######################################################
function delete_user(){
  local user=
  select_a_user user

  if [ -z "$user" ]; then
    return
  fi


  dialog --title "Delete files" \
  --backtitle "$BTITLE" \
  --yesno "Also delete homedir and mail spool?" 7 60

  # Get exit status
  # 0 means user hit [yes] button.
  # 1 means user hit [no] button.
  # 255 means user hit [Esc] key.
  response=$?
  case $response in
     0) # "Yes"
        userdel -r "$user" >$OUTPUT 2>&1
        ;;
     1) # "No"
        userdel "$user" >$OUTPUT 2>&1
        ;;
     255) return;;
  esac

  # check result
  if test $? -eq 0
  then
    echo "User deleted" >$OUTPUT
  fi

  display_output 20 60 "Delete user"
}
