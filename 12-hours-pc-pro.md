  # Multiple noVNC

## Github Repo Download (1st Time Only):

  1. Open Google Cloud [Shell](https://shell.cloud.google.com/?hl=en_US&fromcloudshell=true&show=terminal&authuser=1).
  2. Run this command:
```bash
git clone https://github.com/jahidrdpschool/pc-cloud-shell.git
```

  ## Step 1: Launch the first novnc2

  1. Run this command:
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
  2. Wait for the container to start.
  3. Cloud Shell Click on "Access Link: https://localhost:8080"
  4. Close the Cloud Shell tab, but keep the novnc2 tab open.

  ## Step 2: Launch novnc2

  1. novnc2: Go to LXTerminal:
      ```
      firefox https://mail.google.com
      firefox https://github.com/jahidrdpschool/pc-cloud-shell/blob/main/12-hours-pc-pro.md https://shell.cloud.google.com/?hl=en_US&fromcloudshell=true&show=terminal

      ```
  1. novnc2: Login to your [Gmail](https://mail.google.com) account.
  2. novnc2: Go to Google Cloud [Shell](https://shell.cloud.google.com).

  ## Step 3: Automate launching multiple novnc2
  1. novnc2: Open a new terminal in Google Cloud Shell.
  2. novnc2: Run this script:
      ```bash
      chmod +x pc-cloud-shell/multiple-pc.sh
      ./pc-cloud-shell/multiple-pc.sh
      ```
  3. novnc2: Follow the prompts to enter the number of 11 PC you want to launch.
  4. novnc2: Close the "Github Repository" tab, Cloud Shell Click on: "Access Link 11: https://localhost:8011"


  ## Step 4: Access and use multiple novnc2
  1. Go back to your main Chrome browser.
  2. Change the port number in the URL one by one to access each Ubuntu Desktop instance.
     Example URLs:
     ```
     https://shell.cloud.google.com/devshell/proxy?authuser=1&port=8001&environment_id=default
     https://shell.cloud.google.com/devshell/proxy?authuser=1&port=8002&environment_id=default
     https://shell.cloud.google.com/devshell/proxy?authuser=1&port=8003&environment_id=default
     ```
  3. Open YouTube in each instance and play videos to simulate watch time across multiple sessions.

