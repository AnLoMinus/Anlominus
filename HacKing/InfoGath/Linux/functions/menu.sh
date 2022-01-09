#!/bin/bash

# README!!!
# -->MENU CAN BE FURTHER ABSTRACTED<--#

#### Display on-screen menu ####

function show_menu(){
    date
    printf "%s\n" "------------------------------"
    printf "%s\n" "  Linux System Info           " 
    printf "%s\n" "  Main Menu                   "
    printf "%s\n" "------------------------------"
        printf "%s\n" "  1. OS Info" 
        printf "%s\n" "  2. Hostname & DNS Info"
        printf "%s\n" "  3. Network Info"
        printf "%s\n" "  4. Who is Online"
        printf "%s\n" "  5. Last Logged in Users"
        printf "%s\n" "  6. CPU Info" 
        printf "%s\n" "  7. Free & Used Memory Info"
        printf "%s\n" "  8. Disk Usage" 
        printf "%s\n" "  9. Exit" 
}

function read_input(){
    local c
    read -p "Enter your choice [ 1-9 ]:  " c
    case $c in
        1) os_info ;;
        2) host_info ;;
        3) net_info ;;
        4) user_info "who" ;;
        5) user_info "last" ;;
        6) cpu_info ;;
        7) mem_info ;;
        8) disk_space;;
        9) printf "%s\n"  "Ciao!"; exit 0 ;;
        *) 
           printf "%s\n"  "Select an Option (1 to 9):  "
           pause
    esac
}

#### Ignore CTRL+C, CTRL+Z and quit signals using the trap ####

trap '' SIGINT SIGQUIT SIGTSTP

#### Main logic ####
# Display menu; wait for user input 
while true 
do
    clear
    show_menu
    read_input
done
