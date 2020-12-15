#!/bin/sh
wget -nc 'https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip'
unzip ngrok-stable-linux-amd64.zip config/* 2> /dev/null || true 
#echo -n "AuthToken"
./ngrok authtoken xxxxxxxxxxxxxxxxxx
./ngrok http 8080
