# PC

## Try running a command now:

```bash
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker rmi $(docker images -q)
clear
docker run -p 6079:80 -e RESOLUTION=1400x720 -v /dev/shm:/dev/shm dorowu/ubuntu-desktop-lxde-vnc
```

Or

```bash
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker rmi $(docker images -q)
clear
docker run -p 8080:80 -e RESOLUTION=1400x720 -v /dev/shm:/dev/shm dorowu/ubuntu-desktop-lxde-vnc
```

Or

```bash
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker rmi $(docker images -q)
clear
echo "Downloading the Docker Image"
docker run -p 8080:6080 -d colinhuang/wine-with-novnc > /dev/null 2>&1
echo "Downloaded, running"
echo "usually https://shell.cloud.google.com/devshell/proxy?authuser=1&port=6080&environment_id=default"
```

## JPRQ

### Download 1st Time
```bash
curl -fsSL https://jprq.io/install.sh | sudo bash
```
- First obtain auth token from [jprq.io/auth](https://jprq.io/auth), then

### Your Auth Token
```bash
jprq auth <your-auth-token>
```

### Run
```bash
jprq http 6079 -s custom
```


## Ngrok

### Download 1st Time
```bash
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
```

### Unzip 1st Time
```bash
unzip ngrok-stable-linux-amd64.zip
```

### Ngrok Auth Token (Optional)
```bash
./ngrok authtoken YOUR_AUTH_TOKEN

```

### Run
```bash
./ngrok http 6079
```


## Serveo

### Run
```bash
ssh -R 80:localhost:6079 serveo.net
```
