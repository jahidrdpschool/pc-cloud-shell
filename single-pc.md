# PC

## Try running a command now:

```bash
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker rmi $(docker images -q)
clear
echo ""
echo "Access Link: https://localhost:8080"
echo ""
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
echo ""
echo "https://localhost:8080"
echo "Or"
echo "https://shell.cloud.google.com/devshell/proxy?port=8090&environment_id=default&authuser=1"
echo ""
```
