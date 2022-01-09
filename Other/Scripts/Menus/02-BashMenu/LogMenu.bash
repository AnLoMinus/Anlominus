
#!/bin/bash

# Create a bash menu to perform
# routine system admin task

# while loop to keep the menu open.
while true
do

        # Clear the screen to create
        # a fresh menu
        clear

	echo "###################################"
        echo "######### Log MENU #################"
        echo "###################################"
        echo " 1) Search Apache Log file"
        echo " "
        echo " 2) Run Geolocaltion of Log file"
        echo " "
        echo " 3) Print out GeoIP info"

        echo " "

        echo " 4) Tail Apache log"

        echo ""

        echo " w) Go back to MainMenu"
        echo " "
        echo " e) Exit the menu"

        echo ""
        echo ""
        # Read in the value from the user
        read -p "Please enter a value[1-3]: " choice
        echo ""
        # case statement
        case ${choice} in
                1)
          printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
          echo""
          bash search-a.bash
          printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
          echo""
          read -p "Please press [Enter] to continue" readEnterKey
                ;;

                 2)

                   	printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -

                        echo""
                        bash geoip.bash
                        printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
                        echo""
                        read -p "Please press [Enter] to continue" readEnterKey
                ;;


                3)

                        printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -

                        echo""
                        cat /home/ec2-user/BashMenu/ipinfo.csv

                        printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
                        echo""
                        read -p "Please press [Enter] to continue and wipe" readEnterKey

                        printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
                        echo""

                        rm -rf ips.txt
                        rm -rf ipinfo.csv
                        rm -rf uniqips.txt
                        ls /home/joe/BashMenu/


                        printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
                        echo""
                        read -p "Please press [Enter] to continue" readEnterKey

                ;;


                4)
                  	printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -



                        echo""
                        tail /var/log/apache2/access.log
                        printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
                        echo""
                        read -p "Please press [Enter] to continue" readEnterKey




                ;;


                e)
                  	exit 0

                ;;

                w)
                  	bash MainMenu.bash

                ;;
                *)
                  	printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
                        echo""
                        echo "Invalid value provided! You'll be taken"
                        echo "back to the main menu momentarily"
                        printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
                        echo""
                        sleep 3

                ;;

        # end case statement
        esac

# end while loop
done
