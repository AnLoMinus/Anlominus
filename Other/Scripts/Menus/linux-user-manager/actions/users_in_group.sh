#######################################################
#
#  List the users that belong to a group
#
### -- external -- #################
# OUTPUT = file
# INPUT = file
# display_output = msgbox to display results
#######################################################
function users_in_group(){
  local group=
  select_a_group group

  if [ -z "$group" ]; then
    return
  fi


  local groupid=
  local user_list=
  >$OUTPUT
  # get GID
  for line in $(grep -w $group /etc/group)
  do
    if [ "$(echo $line | cut -d: -f1)" = "$group" ]; then
      groupid="$(echo $line | cut -d: -f3)"
      secondary_users="$(echo $line | cut -d: -f4)"
      secondary_users="$(echo "$secondary_users" | tr ',' ' ')"
      break
    fi
  done
  # get primary users
  for line in $(grep -w $groupid /etc/passwd)
  do
    if [ -n "$(echo $line | cut -d: -f4 | grep -w $groupid)" ]; then
      # user_list="$user_list [ $(echo $line | cut -d: -f1) ]"
      echo "[ $(echo $line | cut -d: -f1) ]" >>$OUTPUT
    fi
  done
  # separate secondary users
  for line in ${secondary_users}
  do
    echo "$line" >>$OUTPUT
  done


  display_output 13 25 "Users"
}
