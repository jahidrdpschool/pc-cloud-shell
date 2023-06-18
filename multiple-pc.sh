clear

download_and_run() {
  local port=$1
  local index=$2

  docker run -p $port:80 -e RESOLUTION=1400x720 -d dorowu/ubuntu-desktop-lxde-vnc > /dev/null 2>&1
  echo ""
  echo "Access Link $index: https://shell.cloud.google.com/devshell/proxy?authuser=1&port=$port&environment_id=default"
  echo ""
}

read -p "Enter the number of PC: " PC

for ((i = 1; i <= PC; i++)); do
  port=$((8000 + i))
  download_and_run $port $i
done
