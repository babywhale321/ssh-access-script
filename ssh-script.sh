#!/bin/sh
#Made By: BabyWhale

#public ipv4 of ssh server
echo "What is the public ipv4 address of the ssh server you are accessing? 22.22.22.22 = an example"
read -r ipvar

#port of ssh server
echo "What is the port number of the ssh server you are accessing? 22 = an example"
read -r portvar

#user of ssh server
echo "What is the username of the ssh server you are accessing? user22 = an example"
read -r uservar

#Variables from user input is put into proper syntax for ssh
ssh -p $portvar $uservar@$ipvar
