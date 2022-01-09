#######################################################
#
#  Utils
#
### -- external -- #################
# OUTPUT = file
# INPUT = file
# display_output = msgbox to display results
#######################################################

function select_a_user(){
  local _outvar=$1
  local _user_list=
  local _normal_users=
  local _system_users=
  local _user=
  #local _UID_MIN=$(grep -w UID_MIN /etc/login.defs | tr -s " " | cut -d" " -f2)
  local _UID_MIN=$(grep -v "^#" /etc/login.defs | grep -w UID_MIN | tr -s " " | cut -d" " -f2)
  local _uid=

  # get users
  while read -r _line
  do
    # _user_list="$_user_list $_user -"
    _user=$(echo "$_line" | cut -d: -f1)
    _uid=$(echo "$_line" | cut -d: -f3)
    if [ "$_uid" -ge "$_UID_MIN" ]; then
      _normal_users="$_normal_users $_user"
    else
      _system_users="$_system_users $_user"
    fi
  done < /etc/passwd
  # remove leading space, sort, add type
  _normal_users=$(echo "$_normal_users" | sed 's/ //' | tr " " "\n" | sort -b)
  _normal_users=$(echo "$_normal_users" | tr "\n" " " | sed -e 's/ / - /g')
  _system_users=$(echo "$_system_users" | sed 's/ //' | tr " " "\n" | sort -b)
  _system_users=$(echo "$_system_users" | tr "\n" " " | sed -e 's/ / sys /g')

  _user_list="$_normal_users $_system_users"
  _user=

  # show users
  dialog --clear --backtitle "$BTITLE" \
  --title "[ USERS ]" \
  --menu "Users: normal(-) system(sys)" 15 50 15 \
  $_user_list 2>"${INPUT}"

  if test $? -eq 0
  then
    #  echo "ok pressed"
    _user=$(<"${INPUT}")
  fi

  eval $_outvar=\$_user
}

function select_a_group(){
  local _outvar=$1
  local _groups_list=
  local _group=

  # get groups
  # while read -r line
  for line in $(sort /etc/group)
  do
    _group=$(echo $line | cut -d: -f1)
    # count users with this group as primary
    local _gid=$(echo $line | cut -d: -f3)
    local _primary_users=0
    local _secondary_users=0
    if [ -n "$(cut -d: -f4 /etc/passwd | grep -w $_gid)" ]; then
      _primary_users=$(cut -d: -f4 /etc/passwd | grep -w $_gid | wc -l)
    fi
    # count users with this group as secondary
    local _users=$(echo $line | cut -d: -f4)
    if [ -n "$_users" ]; then
      # count the ',' and add 1 (a,b,c = 3)
      _users=$(echo $_users | tr -cd , | wc -c)
      _secondary_users=$((_users+1))
    fi
    # echo $group $users $line >>$OUTPUT
    _groups_list=$(echo "$_groups_list $_group $_primary_users/$_secondary_users")
  # done < /etc/group
  done


  # show groups
  dialog --clear --backtitle "$BTITLE" \
  --title "[ GROUPS ]" \
  --menu "format: [group] [primary/secondary users]" 15 50 15 \
  $_groups_list 2>"${INPUT}"

  _group=

  if test $? -eq 0
  then
    #  echo "ok pressed"
    _group=$(<"${INPUT}")
  fi

  eval $_outvar=\$_group
}
