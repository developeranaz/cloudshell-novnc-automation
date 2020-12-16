#!/bin/sh
#wget -nc 'https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip'
#unzip ngrok-stable-linux-amd64.zip config/* 2> /dev/null || true 
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
#echo -n "AuthToken"
./ngrok authtoken xxxxxxxxxxxxxxxxxx
./ngrok http 8080
