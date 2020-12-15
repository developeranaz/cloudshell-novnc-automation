#!/bin/sh
wget -nc 'https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip'
unzip ngrok-stable-linux-amd64.zip config/* 2> /dev/null || true 
./ngrok authtoken 1lVIHM7VN4hIrNnKxdaZHnmgL4y_7J8BhmSDj3WpHPjpNc7Pu
./ngrok http 8080