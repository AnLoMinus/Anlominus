#######################################################
#
#  Add a group
#     the only difference between normal and system
#     groups is the GID range
#
### -- external -- #################
# OUTPUT = file
# INPUT = file
# display_output = msgbox to display results
#######################################################
function add_group(){
  local type="$1"

  # show an inputbox
  dialog --title "ADD GROUP" \
  --backtitle "$BTITLE" \
  --inputbox "Enter a group name " 8 60 2>$INPUT

  if test $? -eq 0
  then
    #  echo "ok pressed"
    name=$(<"${INPUT}")
  else
    #  echo "cancel pressed"
    return
  fi

  local out=
  if [ "$type" = "sys" ]; then
    out=$(groupadd -r "$name" 2>&1)
  else
    out=$(groupadd "$name" 2>&1)
  fi

  # check result
  if test $? -eq 0
  then
    echo "Group created" >$OUTPUT
  else
    echo "ERROR:" >$OUTPUT
    echo "$out" >>$OUTPUT
  fi

  display_output 20 60 "Add Group"
}
