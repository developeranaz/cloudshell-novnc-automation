#!/bin/sh
#This script isn't Advanced 
#Author Anaz
#orgin-repository : https://github.com/developeranaz/cloudshell-novnc-automation
#updating system
sudo apt update
#making ngrok directory 
mkdir ngrok
#changing directory to ngrok
cd ngrok
#removing all existing files 
rm * 
#removing all existing folders 
rm -r *
#downloading ngrok stable from official webserver
wget 'https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip'
#unzipping ngrok-stable-linux-amd64.zip in selected folder
unzip ngrok-stable-linux-amd64.zip
#installing screen
sudo apt-get install screen
#Activating screen
screen -l
#pushing docker ubuntu desktop (you can change resolution from below code) 
docker run -p 8080:80 -e RESOLUTION=1920x1080 -v /dev/shm:/dev/shm dorowu/ubuntu-desktop-lxde-vnc
