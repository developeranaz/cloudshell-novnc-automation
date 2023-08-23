# cloudshell-novnc-automation
Google Cloudshell Free VPS with Docker-novnc and Ngrok - AUTOMATION

#### Go To https://shell.cloud.google.com and use the below commands


## 1.cloning git repository
$ 
```
mkdir ngrok; cd ngrok; curl 'https://raw.githubusercontent.com/developeranaz/cloudshell-novnc-automation/developeranaz-patch-1/vnc.sh' > vnc.sh; chmod +x vnc.sh; bash vnc.sh
```

------
## 2.change dir

$ `cd cloudshell-novnc-automation`

------
## 3.executing vnc

$ `bash vnc.sh`

------
## 4.It asks for ngrok authtoken

Go to https://ngrok.io in any browser & signin or signup, copy the ngrok auth token and paste in terminal

###### note: ngrok token only 

eg: 4OXX56rxxxI0zzZZYXXXXZ0_3xSAyW24irP0xxxxx0xx

------
## 5.Acessing VM through browser

After installing necessary pakages
The script ends by giving a ngrok url section for accessing Vritual Machine.
Access it by using your favourite browser

###### Tip1: In novnc settings change `remote scaling` to `local scaling` for correcting resolution
###### Tip2: For installing other packages, initially run `apt update` in terminal of docker machine

## Beta Script
First Run 
```
sudo su
```

To run the Beta Script, execute the following one-liner command:
```
mkdir ngrok; cd ngrok; curl 'https://raw.githubusercontent.com/developeranaz/cloudshell-novnc-automation/developeranaz-patch-1/vnc.sh' > vnc.sh; chmod +x vnc.sh; bash vnc.sh
```
