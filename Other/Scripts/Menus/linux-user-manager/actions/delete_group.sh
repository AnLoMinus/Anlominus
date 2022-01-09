#######################################################
#
#  Delete a group
#
### -- external -- #################
# OUTPUT = file
# display_output = msgbox to display results
#######################################################
function delete_group(){
  local group=
  select_a_group group

  if [ -z "$group" ]; then
    return
  fi

  groupdel "$group" >$OUTPUT 2>&1

  # check result
  if test $? -eq 0
  then
    echo "Group deleted" >$OUTPUT
  fi

  display_output 20 60 "Delete group"
}
