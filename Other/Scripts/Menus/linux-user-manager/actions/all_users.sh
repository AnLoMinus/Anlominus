#######################################################
#
#  List all users
#
### -- external -- #################
# OUTPUT = file
# INPUT = file
# display_output = msgbox to display results
### -- references -- ###############
## https://www.cyberciti.biz/faq/understanding-etcpasswd-file-format/
## https://linux.die.net/man/5/passwd
#######################################################
function all_users(){
  >$INPUT
  >$OUTPUT
  # cache groups
  local fGroups=$(cat /etc/group)

  printf "%18s | %s | %s\n" "User" "Primary Group" "Login" >$OUTPUT
  printf "%s\n" "------------------------------------------------" >>$OUTPUT
  while read -r line
  do
    user=$(echo $line | cut -d: -f1)
    #
    group=$(echo $line | cut -d: -f4)
    for gline in $(echo "$fGroups" | grep $group)
    do
      if [ $(echo $gline | cut -d: -f3 | grep $group) ]; then
        group=$(echo $gline | cut -d: -f1 )
        break
      fi
    done
    #
    shell=$(echo $line | cut -d: -f7)
    if [ $(echo "$shell" | grep -w "bash") ] || \
      [ $(echo "$shell" | grep -w "ash") ] || \
      [ $(echo "$shell" | grep -w "sh") ]
    then
      shell="YES [$shell]"
    elif [ -z "$shell" ]; then
      shell="YES [/bin/sh]" # by default
    elif [ $(echo "$shell" | grep -w "nologin") ] || \
      [ $(echo "$shell" | grep -w "false") ]
    then
      shell="" # NO login
    else
      shell="? [$shell]"
    fi

    pads="__________________"
    printf "%18s | %s%s | %5s \n" $user "${pads:${#group}}" $group "$shell" >>$INPUT
  done < /etc/passwd

  cat $INPUT | sort >>$OUTPUT

  display_output 25 70 "Users"
}
