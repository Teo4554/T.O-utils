#!bin/bash
#experimental script, do not use in servers
#fast and semi-automatic updating script by Teo:D
#I advice you to set this script as an starup binary/program, it will make using this script a lot more comfortable to use
read "Greetings, what do u wanna do;)?: " [op] #option
if [$op == fupdate ]; then #fupdate= full update, apt update updates the repository, and apt upgrade downloads and installs the update-avalaible packpages and dependecies, if there is a reason why apt update fails, upgrade will not run neither
    sudo apt update && sudo apt upgrade -y
    echo "Update finished, exiting process..."
    exit 0
elif [$op == toff]; then #turns off pc after 60 seconds, i dont really know why you would use this if you just started your pc, but there you go, you can cancel it using shutdown -c on your terminal
    shutdown +1
elif [$op == specs]; then #only works when fastfetch bin is installed on the linux sys, it will display your customized (if you customized it) fastfetch specs on your terminal, youll have to close terminal manually
    fastfetch
    exit 
elif [$op == test]; then #only works when cli-ookla internet speed test is installed, it will execute the neccesary test on your network download/upload speed, i decided to leave this with no exit prompt, so you can check any detail in your test
    speedtest-cli
else 
    echo "invalid command, exitting..."
    exit 1
fi
#0.1
