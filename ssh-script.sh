#!/bin/sh

#public ipv4 of ssh server
read -p "What is the public ipv4 address of the ssh server you are accessing? 22.22.22.22 = an example" ipvar

#port of ssh server
read -p "What is the port number of the ssh server you are accessing? 22 = an example" portvar

#user of ssh server
read -p "What is the username of the ssh server you are accessing? user22 = an example" uservar

#saves script under user prompts if they want to
read -p "Would you like to save this script? (y/n)" savescriptvar

# Convert savescriptvar to lowercase
savescriptvar=$(echo "$savescriptvar" | tr '[:upper:]' '[:lower:]')

if [ "$savescriptvar" = "y" ] || [ "$savescriptvar" = "yes" ]
then
    read -p "What will this file be called? my-ssh-script.sh = an example" savescriptyesvar
    echo "ssh -p $portvar $uservar@$ipvar" >> $savescriptyesvar
else
    ssh -p $portvar $uservar@$ipvar
fi
    ssh -p $portvar $uservar@$ipvar
