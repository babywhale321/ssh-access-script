#!/bin/sh

#public ipv4 of ssh server
echo "What is the public ipv4 address of the ssh server you are accessing? 22.22.22.22 = an example"
read ipvar

#port of ssh server
echo "What is the port number of the ssh server you are accessing? 22 = an example"
read portvar

#user of ssh server
echo "What is the username of the ssh server you are accessing? user22 = an example"
read uservar

#saves script under user prompts if they want to
echo "Would you like to save this script? (y/n)"
read savescriptvar

if [ "$savescriptvar" = "y" ] || [ "$savescriptvar" = "yes" ] || [ "$savescriptvar" = "Y" ] || [ "$savescriptvar" = "Yes" ]
then
    echo "What will this file be called? my-ssh-script.sh = an example"
    read savescriptyesvar
    echo "ssh -p $portvar $uservar@$ipvar" >> $savescriptyesvar
else
    ssh -p $portvar $uservar@$ipvar
fi
