# Multiple PC

## Try running a command now:

```bash
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker rmi $(docker images -q)
clear
echo "Downloading the Docker Image"
docker run -p 8080:80 -e RESOLUTION=1400x720 -d dorowu/ubuntu-desktop-lxde-vnc > /dev/null 2>&1
echo "Downloaded, running"
echo "Access Link: https://shell.cloud.google.com/devshell/proxy?authuser=1&port=8080&environment_id=default"
```

```bash
chmod +x multiple-pc.sh
./multiple-pc.sh
```
