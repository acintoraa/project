#!#/usr/bin/env bash
choice=3 #Default Option of the menu
where=$(pwd)
clear
function menu() {
echo ""
echo " ************** G U E S S   G A M E ***************** " # Main Menu
echo " Guess how many files are in ... $where"
echo " 1. Let's play to guess"
echo " 2. Exit the game"
echo -n " Choice a option [1 or 2] "
echo ""
echo " * * * * * * * * * * * * * * * * * * * * * * by Adrian Cintora Feb21"
}
menu
while [ $choice -eq 3 ]; do # Bucle Main While
read choice
if [[ $choice -eq 1 ]]; then
        echo "LET'S PLAY !!! How many file do you think are in the directory?"
  choice2=4 # Start game code
  total=$(ls | wc -l)
  read response
   while [ $choice2 -eq 4 ]; do # Start second while
        if [[ $response -eq $total ]]  # Start code comparation input vs total files
        then
             echo "Congratulation !!! YOU GUESSED there are $total files in $where."
             choice2=0
           elif [[ $response -gt $total ]]
           then
               echo "Your estimate of $response is too HIGH, compared to the total, try again."
		choice=3
		menu # Returns main menu
           else
               echo "Your estimate of $response is too LOW, compared to the total, try again."
		choice=3 
		menu # Retunrs main menu
        fi # Ends comparation code
   choice2=1
   done # Ends While of the game code
else
                if [[ $choice -eq 2 ]]; then
                        echo "You Choiced: Exit the game."
                        break
                else
                        echo -n "Please only choice a number: 1 o 2 " #Validate  input a correct option
                        choice=3
                fi
fi
done # Ends While main
