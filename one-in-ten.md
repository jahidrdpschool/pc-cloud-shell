# Ten PC

## Try running a command now:

```bash
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker rmi $(docker images -q)
clear
echo "Downloading the Docker Image"
docker run -p 8080:80 -e RESOLUTION=1400x720 -d dorowu/ubuntu-desktop-lxde-vnc > /dev/null 2>&1
echo "Downloaded, running"
echo "usually https://shell.cloud.google.com/devshell/proxy?authuser=1&port=8080&environment_id=default"
```

```bash
download_and_run() { local port=$1 local index=$2 echo "Downloading Docker Image $index" docker run -p $port:80 -e RESOLUTION=1400x720 -d dorowu/ubuntu-desktop-lxde-vnc > /dev/null 2>&1 echo "Downloaded Docker Image $index, running" echo "Access Link: https://shell.cloud.google.com/devshell/proxy?authuser=1&port=$port&environment_id=default" echo } for i in {1..10}; do port=$((8000 + i)) download_and_run $port $i Done
```
