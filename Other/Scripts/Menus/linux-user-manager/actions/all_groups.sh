#######################################################
#
#  List all groups
#
### -- external -- #################
# OUTPUT = file
# INPUT = file
# display_output = msgbox to display results
### -- references -- ###############
## https://www.cyberciti.biz/faq/understanding-etcgroup-file/
## https://linux.die.net/man/5/group
#######################################################
function all_groups(){
  >$OUTPUT
  >$INPUT
  printf "%17s | %s | %s\n" "Group" "Password" "Users #" >$OUTPUT
  printf "%s\n" "--------------------------------------" >>$OUTPUT

  while read -r line
  do
    group=$(echo $line | cut -d: -f1)
    #
    password=$(echo $line | cut -d: -f2)
    if [ -n "$password" ] || [ "$password" = "x" ]; then
      password="NO"
    else
      password="YES"
    fi
    #
    # count users with this group as primary
    gid=$(echo $line | cut -d: -f3)
    local user_count=
    if [ -n "$(cut -d: -f4 /etc/passwd | grep -w $gid)" ]; then
      user_count=$(cut -d: -f4 /etc/passwd | grep -w $gid | wc -l)
    fi
    # count users with this group as secondary
    users=$(echo $line | cut -d: -f4)
    if [ -n "$users" ]; then
      # count the ',' and add 1 (a,b,c = 3)
      users=$(echo $users | tr -cd , | wc -c)
      user_count=$((user_count+users+1))
    fi
    printf "%17s | %5s | %3s \n" $group $password $user_count >>$INPUT
  done < /etc/group

  cat $INPUT | sort >>$OUTPUT
  display_output 20 60 "Groups"
}
