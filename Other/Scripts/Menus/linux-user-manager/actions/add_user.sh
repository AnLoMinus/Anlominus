#######################################################
#
#  Add a user
#     normal user - with default homedir and /bin/bash shell if it exists
#     system user - no homedir, no shell, no login
#
### -- external -- #################
# OUTPUT = file
# INPUT = file
# display_output = msgbox to display results
#######################################################
function add_user(){
  local type="$1"

  # show an inputbox
  dialog --title "ADD USER" \
  --backtitle "$BTITLE" \
  --inputbox "Enter a user name " 8 60 2>$INPUT

  if test $? -eq 0
  then
    #  echo "ok pressed"
    name=$(<"${INPUT}")
  else
    #  echo "cancel pressed"
    return
  fi

  local shell=
  local out=
  if [ "$type" = "sys" ]; then
    shell=$(whereis -b nologin | cut -d" " -f2)
    if [ -z "$shell" ]; then
      shell="/usr/sbin/nologin"
    fi
    out=$(useradd -rMs "$shell" "$name" 2>&1)
  else
    if [ -e "/bin/bash" ]; then
      shell="/bin/bash"
    fi
    out=$(useradd -m "$name" -s "$shell" 2>&1)
  fi

  if test $? -eq 0
  then
    echo "User created" >$OUTPUT
  else
    echo "ERROR:" >$OUTPUT
    echo "$out" >>$OUTPUT
  fi

  display_output 20 60 "Add User"
}
