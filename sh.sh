#!/bin/sh
sudo apt update
wget 'https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip'
apt-get install screen
screen -l 
docker run -p 8080:80 -e RESOLUTION=1920x1080 -v /dev/shm:/dev/shm dorowu/ubuntu-desktop-lxde-vnc