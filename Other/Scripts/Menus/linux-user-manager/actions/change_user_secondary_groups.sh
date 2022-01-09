#######################################################
#
#  Change the (secondary) groups a user is in
#
### -- external -- #################
# OUTPUT = file
# INPUT = file
# display_output = msgbox to display results
#######################################################
function change_secondary_groups(){
  local user=
  select_a_user user

  if [ -z "$user" ]; then
    return
  fi


  local groupid=
  local user_groups=
  local groups_list=
  # get GID of primary group
  while read -r line
  do
    if [ $(echo $line | cut -d: -f1 | grep -w $user) ]; then
      groupid=$(echo $line | cut -d: -f4 )
      break
    fi
  done < /etc/passwd
  # get secondary groups
  for line in $(sort /etc/group)
  do
    # ignore/hide primary group
    if [ "$groupid" != $(echo "$line" | cut -d: -f3) ]; then
      # check to which groups the user belongs
      if [ $(echo "$line" | cut -d: -f4 | grep $user) ]; then
        groups_list=$(printf "%s %s %s %s" "$groups_list" $(echo "$line" | cut -d: -f1) "-" "on")
        user_groups=$(printf "%s %s" "$user_groups" $(echo "$line" | cut -d: -f1))
      else
        groups_list=$(printf "%s %s %s %s" "$groups_list" $(echo "$line" | cut -d: -f1) "-" "off")
      fi
    fi
  done


  # select groups
  local selected_groups=
  dialog --clear --backtitle "$BTITLE" \
  --title "[ GROUPS ]" \
  --checklist "Select groups" 22 40 30 \
  $groups_list 2>"${INPUT}"

  if test $? -eq 0
  then
    #  echo "ok pressed"
    selected_groups=$(<"${INPUT}")
  else
    #  echo "cancel pressed"
    return
  fi


  echo "ERROR:">$OUTPUT
  local flagerr=0
  local fe=
  # remove (in user_groups but not in selected)
  for group in $(echo "$user_groups")
  do
    if [ -z "$(echo "$selected_groups" | grep -w $group)" ]; then
      gpasswd -d "$user" "$group" >>$OUTPUT 2>&1
      fe=$?
      [ "$flagerr" -eq 0 ] && flagerr=$fe
    fi
  done

  # add (in selected but not in user_groups)
  for group in $(echo "$selected_groups")
  do
    if [ -z "$(echo "$user_groups" | grep -w $group)" ]; then
      echo "gpasswd -a $user $group"
      gpasswd -a "$user" "$group" >>$OUTPUT 2>&1
      fe=$?
      [ "$flagerr" -eq 0 ] && flagerr=$fe
    fi
  done


  # check result
  # if test $? -eq 0
  if test $flagerr -eq 0
  then
    echo "Groups changed" >$OUTPUT
  fi

  display_output 20 60 "Change Groups"
}
