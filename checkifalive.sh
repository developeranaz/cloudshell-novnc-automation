#!/bin/bash

while true; do
    if curl -s http://localhost:8080 >/dev/null; then
        echo "Site is Online"
        echo "Go to "
        curl -s http://localhost:4040/api/tunnels/ |sed 's/"/\n/g' |grep 'http:\|https:' |sort -u
        echo "Tunnel Successful. To restart or reload System Run `pkill screen; pkill ngrok; pkill supervisord; pkill containerd`"
        break
    else
        clear
        echo "Wait, Your machine is currently loading."
        sleep 1
        clear
        echo "Wait, Your machine is currently loading.."
        sleep 1
        clear
        echo "Wait, Your machine is currently loading..."
        sleep 1
        clear
        echo "Wait, Your machine is currently loading...."
        sleep 1
    fi
done
