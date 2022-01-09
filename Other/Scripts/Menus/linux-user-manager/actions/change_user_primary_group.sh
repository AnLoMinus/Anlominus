#######################################################
#
#  Change the primary group a user is in
#
### -- external -- #################
# OUTPUT = file
# INPUT = file
# display_output = msgbox to display results
#######################################################
function change_primary_group(){
  local user=
  select_a_user user

  if [ -z "$user" ]; then
    return
  fi


  local primary_group_id=
  local groups_list=
  # get GID of primary group
  while read -r line
  do
    if [ $(echo $line | cut -d: -f1 | grep -w $user) ]; then
      primary_group_id=$(echo $line | cut -d: -f4 )
      break
    fi
  done < /etc/passwd

  # get all groups
  for line in $(sort /etc/group)
  do
    # mark primary group as selected
    if [ "$primary_group_id" = $(echo "$line" | cut -d: -f3) ]; then
      groups_list=$(printf "%s %s %s %s" "$groups_list" $(echo "$line" | cut -d: -f1) "-" "on")
    else
      groups_list=$(printf "%s %s %s %s" "$groups_list" $(echo "$line" | cut -d: -f1) "-" "off")
    fi
  done

  # show groups
  dialog --clear --backtitle "$BTITLE" \
  --title "[ CHANGE PRIMARY GROUP ]" \
  --radiolist "Select primary group" 22 40 30 \
  $groups_list 2>"${INPUT}"

  if test $? -eq 0
  then
    #  echo "ok pressed"
    local selected_group=$(<"${INPUT}")
  else
    #  echo "cancel pressed"
    return
  fi


  usermod -g "$selected_group" "$user" >$OUTPUT 2>&1

  # check result
  if test $? -eq 0
  then
    echo "Primary group changed" >$OUTPUT
  fi

  display_output 20 60 "Change primary group"
}
