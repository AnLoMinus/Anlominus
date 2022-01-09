#######################################################
#
#  List the groups a user is in
#
### -- external -- #################
# OUTPUT = file
# INPUT = file
# display_output = msgbox to display results
#######################################################
function groups_for_user(){
  local user=
  select_a_user user

  if [ -z "$user" ]; then
    return
  fi


  local groupid
  >$OUTPUT
  # primary - get GID
  while read -r line
  do
    if [ $(echo $line | cut -d: -f1 | grep -w $user) ]; then
      groupid=$(echo $line | cut -d: -f4 )
      break
    fi
  done < /etc/passwd
  # primary - get GID name
  for line in $(grep -w "$groupid" /etc/group)
  do
      if [ $(echo $line | cut -d: -f3 | grep $groupid) ]; then
        printf "[ %s ]\n" $(echo $line | cut -d: -f1) >>$OUTPUT
        break
      fi
  done
  # secondary
  for line in $(grep -w "$user" /etc/group)
  do
      if [ $(echo $line | cut -d: -f4 | grep $user) ]; then
        echo $line | cut -d: -f1 >>$OUTPUT
      fi
  done

  display_output 13 25 "Groups"
}
