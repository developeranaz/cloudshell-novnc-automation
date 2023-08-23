#!/bin/sh
#This script isn't Advanced 
#Author Anaz
#orgin-repository : https://github.com/developeranaz/cloudshell-novnc-automation


#removing all existing files 
rm * 

#removing all existing folders 
rm -r *

#downloading ngrok stable from official webserver
wget 'https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip'

#unzipping ngrok-stable-linux-amd64.zip in selected folder
unzip ngrok-stable-linux-amd64.zip

#asking ngrok auth token
echo " Go to ngrok.io in any browser & signin or signup, copy the ngrok auth token and paste here, ngrok token only  (example - 4OXX56rxxxI00QGKnXXXXZ0_3xSAyW24irP0A0ie0bo0B),Readme - https://github.com/developeranaz/cloudshell-novnc-automation   Ngrok Auth token: "
read input_token
echo "You entered: $input_token"
./ngrok authtoken $input_token

#orgin-repository : https://github.com/developeranaz/cloudshell-novnc-automation

#updating system
sudo apt update -y

#installing screen
sudo apt-get install screen -y

#Activating screen
#pushing docker ubuntu desktop using screen (you can change resolution from below code) 
screen -d -m docker run -p 8080:80 -e RESOLUTION=1920x1080 -v /dev/shm:/dev/shm developeranaz/ubuntu-desktop-lxde-vnc-cs:latest
screen -d -m ./ngrok http 8080
curl "https://raw.githubusercontent.com/developeranaz/cloudshell-novnc-automation/developeranaz-patch-1/checkifalive.sh" >checkifalive.sh
chmod +x checkifalive.sh
./checkifalive.sh
