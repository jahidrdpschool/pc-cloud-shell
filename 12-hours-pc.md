  # Multiple Ubuntu Desktop Instances Tutorial

## Github Repo Download (1st Time Only):

```bash
git clone https://github.com/jahidrdpschool/pc-cloud-shell.git
```

  ## Step 1: Launch the first Ubuntu Desktop instance
  1. Open Google Cloud [Shell](https://shell.cloud.google.com/?hl=en_US&fromcloudshell=true&show=terminal&authuser=1).
  2. Run this command:
      ```bash
      docker kill $(docker ps -q)
      docker rm $(docker ps -a -q)
      docker rmi $(docker images -q)
      clear
      docker run -p 8080:80 -e RESOLUTION=1400x720 -d dorowu/ubuntu-desktop-lxde-vnc
      clear
      echo ""
      echo "Access Link: https://localhost:8080"
      echo ""
      ```
  3. Wait for the container to start.
  4. Open this URL in a new tab of your web browser

  ## Step 2: Launch additional Ubuntu Desktop instances
  1. Close the Google Cloud Shell tab, but keep the Ubuntu Desktop tab open.
  2. Login to your Gmail account and go to:
      ```
      https://shell.cloud.google.com/
      ```
  3. Open a new terminal and run this command to start a new Ubuntu Desktop container:
      ```bash
      clear
      echo ""
      echo "Access Link: https://localhost:8011"
      echo ""
      docker run -p 8011:80 -e RESOLUTION=1400x720 -v /dev/shm:/dev/shm dorowu/ubuntu-desktop-lxde-vnc
      ```
  4. Open a new tab in your web browser and go to:
      ```
      https://shell.cloud.google.com/devshell/proxy?authuser=1&port=8011&environment_id=default
      ```
  5. This will open another Ubuntu Desktop instance in a new tab.

  ## Step 3: Automate launching multiple Ubuntu Desktop instances
  1. Open a new terminal in Google Cloud Shell.
  2. Run this script:
      ```bash
      clear
      download_and_run() {
        local port=$1
        local index=$2

        docker run -p $port:80 -e RESOLUTION=1400x720 -d dorowu/ubuntu-desktop-lxde-vnc > /dev/null 2>&1
        echo ""
        echo "Access Link $index: https://shell.cloud.google.com/devshell/proxy?authuser=1&port=$port&environment_id=default"
        echo ""
      }

      read -p "Enter the number of PCs: " PC

      for ((i = 1; i <= PC; i++)); do
        port=$((8000 + i))
        download_and_run $port $i
      }
      ```
  3. Follow the prompts to enter the number of PCs you want to launch.
  4. The script will start the specified number of Ubuntu Desktop instances and provide you with access links for each instance.

  ## Step 4: Access and use multiple Ubuntu Desktop instances
  1. Go back to your main Chrome browser.
  2. Change the port number in the URL one by one to access each Ubuntu Desktop instance.
     Example URLs:
     ```
     https://shell.cloud.google.com/devshell/proxy?authuser=1&port=8001&environment_id=default
     https://shell.cloud.google.com/devshell/proxy?authuser=1&port=8002&environment_id=default
     https://shell.cloud.google.com/devshell/proxy?authuser=1&port=8003&environment_id=default
     ```
  3. Open YouTube in each instance and play videos to simulate watch time across multiple sessions.
