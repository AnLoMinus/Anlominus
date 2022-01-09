#!/bin/bash

menu_option_one() {
        echo "Checking with yum for updates"
        yumtmp="/tmp/yum-check-update.$$"
        yum="/usr/bin/yum"
        $yum check-update >& $yumtmp
        yumstatus="$?"
        hostname=$(/bin/hostname)
        case $yumstatus in
        o)
        echo "No Updates"
        exit o
        ;;
        *)
        date=$(date)
        number=$(cat $yumtmp | egrep '(.i386|.x86_64|.noarch|.src)'| wc -l)
        updates=$(cat $yumtmp | egrep '(.i386|.x86_64|.noarch|.src)')
        echo "There are $number updates available on host $hostname at $date"
        echo "The available updates are"
        echo ""
        echo "$updates"
        ;;
        esac
        rm -f /tmp/yum-check-update.*
}
menu_option_two() {
        echo "Host machine INFO"
        echo ""
        echo "          1 - Display Basic information"
        echo "          2 - Display Full information"
        echo "          3 - Display CPU information"
        echo "          4 - Display GPU information"
        echo "          0 - Return to main menu"
        echo ""
        echo -n "Enter Selection: "
        read selection
        echo ""
        case $selection in
        1) clear ; menu_option_two_basic ;;
        2) clear ; menu_option_two_full ;;
        3) clear ; menu_option_two_cpu ;;
        4) clear ; menu_option_two_gpu ;;
        *) clear ; incorrect_selection ; press_enter ;;
        0) clear ;;
        esac
}
menu_option_two_basic() {
        hostname=$(/bin/hostname)
        date=$(date)
        echo "Basic Host /  Kernel / IP / Disk information "
        echo ""
        uname -a
        echo ""
        echo "Current TCP/IP configuration: "
        echo ""
        if ! command -v ifconfig &> /dev/null
        then
                ip link show
        else
                ifconfig
        fi
        echo ""
        echo "Hard disks"
        echo ""
        lsblk
        echo ""
        echo "          1. Save output to file"
        echo "          2. Return to main menu"
        echo ""
        echo "Select action: "
        read action
        echo ""
        case $action in
        1) basic_output_to_file ;;
        2) clear ;;
        *) incorrect_selection ; press_enter ;;
        esac
}
menu_option_two_full() {
        echo "Full list information"
        lshw
        echo ""
        echo "          1. Save output to file"
        echo "          2. Return to main menu"
        echo ""
        echo "Select action: "
        read action
        echo ""
        case $action in
        1) full_save_output_to_file ;;
        2) clear ;;
        *) incorrect_selection ; press_enter ;;
        esac
}
menu_option_two_cpu() {
        echo "CPU information"
        echo ""
        lscpu
        echo ""
        echo ""
        echo "          1. Save Output to file"
        echo "          2. Return to main menu"
        echo ""
        echo "Select action: "
        read action
        echo ""
        case $action in
        1) cpu_save_output_to_file ;;
        2) clear ;;
        *) incorrect_selection ; press_enter ;;
        esac
}
menu_option_two_gpu() {
        echo ""
        echo "Basic GPU information"
        echo ""
        lshw -C display
        echo ""
        echo "          1. Save output to file"
        echo "          2. Return to main menu"
        echo ""
        echo "Select action: "
        read action
        echo ""
        case $action in
        1) gpu_save_output_to_file ;;
        2) clear ;;
        *) incorrect_selection ;;
        esac
}
menu_option_three() {
        echo "Logged in users:"
        echo ""
        w
        echo ""
        echo "          1. List all users"
        echo "          2. List users cli history"
        echo "          3. Return to main menu"
        echo ""
        echo "Select action: "
        read action
        case $action in
        1) list_all_users ;;
        2) user_history ;;
        3) clear ;;
        *) incorrect_selection ;;
        esac
}
menu_option_four() {
        echo ""
        echo "Network stats"
        echo ""
        netstat -i
        echo ""
        ifconfig
}
menu_option_five() {
        top
}
menu_option_six() {
        echo""
        history
}
menu_option_seven() {
        echo ""
        echo "          1. Check all auth logs"
        echo "          2. Check last 50 entries"
        echo "          3. Exit to main menu"
        echo ""
        echo "Select action: "
        read action
        case $action in
        1) auth_log_full ;;
        2) auth_log_entries ;;
        3) clear ;;
        esac
}
menu_option_ten() {
        echo ""
        echo "Listing all known hosts"
        echo ""
        cat /etc/hosts
}
auth_log_full() {
        echo ""
        cat /var/log/secure
}
auth_log_entries() {
        tail -50 /var/log/secure
}
list_all_users() {
        echo ""
        awk -F: '{ print $1}' /etc/passwd
        echo ""
}
user_history() {
        echo ""
        echo "          1. Save history of specific user"
        echo "          2. List last 50 commands from all users"
        echo "          3. List all commands of all users"
        echo "          4. Exit to main menu"
        echo ""
        echo "Select action: "
        read action
        case $action in
        1) save_user_history ;;
        2) user_history_part ;;
        3) user_history_all ;;
        4) clear ;;
        esac
}
user_history_all() {
        echo ""
        cat /var/log/cmd.log
}
user_history_part()  {
        echo ""
        tail -50 /var/log/cmd.log
}
save_user_history(){
        echo ""
        echo "Which users history would you like to save?"
        echo "1. User1"
        echo "2. User2"
        echo "3. User3"
        echo "4. root"
        echo "5. All users"
        echo ""
        echo "Select user: "
        read action
        case $action in
        1) save_user_history_user1 ;;
        2) save_user_history_user2 ;;
        3) save_user_history_user3 ;;
        4) save_user_history_root ;;
        5) save_user_history_all ;;
        *) clear ; incorrect_selection ;;
        esac
}
save_user_history_user1() {
        cat /home/username/.bash_history >> /tmp/PoelstraHistory.txt
        echo ""
        echo "Saved as /tmp/User1History.txt"
}
save_user_history_user2() {
        cat /home/username/.bash_history >> /tmp/KastermansHistory.txt
        echo ""
        echo "Saved as /tmp/User1History.txt"
}
save_user_history_user3() {
        cat /home/username/.bash_history >> /tmp/RegenboogHistory.txt
        echo ""
        echo "Saved as /tmp/User2History.txt"
}
save_user_history_root() {
        cat /root/.bash_history >> /tmp/RootHistory.txt
        echo ""
        echo "Saved as /tmp/root.txt"
}
save_user_history_all() {
        cat /home/user/.bash_history && cat /home/user1/.bash_history && cat /home/user2/.bash_history && cat /root/.bash_history >> /tmp/AllUsersHistory.txt
        echo ""
        echo "Saved as /tmp/AllUsersHistory.txt"
}
basic_output_to_file() {
        uname -a && ifconfig && lsblk >> /tmp/BasicInfo.txt &> /dev/null
        echo "Saved as /tmp/BasicInfo.txt"
}
full_save_output_to_file() {
        lshw >> /tmp/HardWareInfo.txt
        echo "Saved as /tmp/HardWareInfo.txt"
}
cpu_save_output_to_file() {
        lscpu >> /tmp/CPUInfo.txt
        echo "Saved as /tmp/CPUInfo.txt"
}
gpu_save_output_to_file() {
        lshw -C display >> /tmp/GPUInfo.txt
        echo "Saved as /tmp/GPUInfo.txt"
}
press_enter() {
        echo ""
        echo -n "       Press Enter to continue "
        read
        clear
}

incorrect_selection() {
        echo "Incorrect selection! Try again. "
}
until ["$selection" = "0" ]; do
        clear
        date=$(date)
        if ! command -v figlet &> /dev/null
        then
                COLUMNS=$(tput cols)
                title=$(date)
                author="Dylan Poelstra"
                banner="Banner"
                printf "%*s\n" $(((${#banner}+$COLUMNS)/2)) "$banner"
                printf "%*s\n" $(((${#title}+$COLUMNS)/2)) "$title"
                printf "%*s\n" $(((${#author}+$COLUMNS)/2)) "$author"
        else
                echo "Banner" | figlet -ctk
                COLUMNS=$(tput cols)
                title=$(date)
                author="Dylan Poelstra"
                printf "%*s\n" $(((${#title}+$COLUMNS)/2)) "$title"
                printf "%*s\n" $(((${#author}+$COLUMNS)/2)) "$author"
        fi
        echo ""
        echo "          1 - Check for updates with yum                          5- List current running processes               10. List known hosts"
        echo "          2 - Host Information                                    6- Command History"
        echo "          3 - Currently logged in users / History                 7- View authentication log"
        echo "          4 - Network stats                                       8- Test "
        echo "          0 - Exit                                                9- Test "
        echo ""
        echo -n "Enter Selection: "
        read selection
        echo ""
        case $selection in
        1) clear ; menu_option_one ; press_enter ;;
        2) clear ; menu_option_two ; press_enter ;;
        3) clear ; menu_option_three ; press_enter ;;
        4) clear ; menu_option_four ; press_enter ;;
        5) clear ; menu_option_five ; press_enter ;;
        6) clear ; user_history ; press_enter ;;
        7) clear ; menu_option_seven ; press_enter ;;
        8) echo "Not available yet" ;;
        9) echo "Not available yet" ;;
        10) clear ; menu_option_ten ; press_enter ;;
        0) clear ; exit ;;
        *) clear ; incorrect_selection ; press_enter ;;
        esac
done
