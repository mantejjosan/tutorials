# Expanded Tutorial: Installing Docker and Running Debian 12 on Windows 10

## Prerequisites: Enable Hyper-V and Windows Containers Features

<details>
<summary>Click to expand: Enabling Hyper-V and Windows Containers</summary>

Before installing Docker Desktop, you need to enable Hyper-V and Windows Containers features:

1. Right-click on the Start button and select "Apps and Features".
2. Scroll down and click on "Programs and Features" under Related Settings.
3. Click on "Turn Windows features on or off".
4. Check the boxes for:
   - Hyper-V
   - Windows Containers
5. Click OK and restart your computer when prompted.

Alternatively, you can use PowerShell to enable these features:

1. Open PowerShell as Administrator.
2. Run the following commands:
   ```powershell
   Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All
   Enable-WindowsOptionalFeature -Online -FeatureName Containers -All
   ```
3. Restart your computer when prompted.

</details>

## 1. Install Docker Desktop on Windows 10

**What**: Docker Desktop is an application that enables you to run Docker containers on Windows.

**Why**: Docker allows you to run applications in isolated environments called containers, which is useful for development, testing, and running applications consistently across different systems.

**Steps explained**:
1. Check system requirements to ensure compatibility.
2. Download the installer from the official website to get the correct and latest version.
3. Run the installer and follow prompts to set up Docker correctly.
4. Restart your computer to ensure all components are properly initialized.

## 2. Start Docker Desktop

**What**: Launching the Docker Desktop application.

**Why**: This starts the Docker engine and prepares your system to run containers.

**Steps explained**:
1. Find Docker Desktop in your Start menu and launch it.
2. Wait for it to fully start up. The whale icon in the taskbar will animate during startup and become static when ready.

## 3. Open PowerShell or Command Prompt

**What**: Opening a command-line interface.

**Why**: You'll use this to interact with Docker through commands.

**Steps explained**:
1. Right-click the Start button and select "Windows PowerShell (Admin)" or "Command Prompt (Admin)".
2. This opens with administrator privileges, which are needed for some Docker operations.

## 4. Pull and Run Debian 12 Container

**What**: Downloading and starting a Debian 12 container.

**Why**: This creates a lightweight, isolated Debian 12 environment on your Windows machine.

**Steps explained**:
1. `docker pull debian:12` downloads the Debian 12 image from Docker Hub.
2. `docker run -it debian:12 /bin/bash` creates and starts a new container from this image:
   - `-it` makes the container interactive and allocates a pseudo-TTY.
   - `/bin/bash` starts a Bash shell in the container.

## 5. Using Your Debian Container

**What**: Interacting with the Debian environment.

**Why**: This allows you to use Debian commands and install software within the container.

**Steps explained**:
- `apt update` refreshes the package list.
- `apt install <package-name>` installs new software in the container.
- `exit` or Ctrl+D closes the container session.

## 6. Managing Your Container

**What**: Basic container management commands.

**Why**: These commands help you monitor, stop, and remove containers as needed.

**Steps explained**:
- `docker ps` lists running containers, showing their IDs and other info.
- `docker stop <container-id>` gracefully stops a running container.
- `docker rm <container-id>` removes a stopped container.

## 7. Creating a Persistent Debian Environment

**What**: Creating a container that retains changes between sessions.

**Why**: This allows you to have a consistent Debian environment that you can return to.

**Steps explained**:
1. `docker run -it --name my-debian debian:12 /bin/bash` creates a named container.
2. `docker start -ai my-debian` restarts and attaches to the named container.

## 8. Using Docker Compose (Optional)

**What**: Using Docker Compose to define and run multi-container Docker applications.

**Why**: This is useful for more complex setups or when you need to run multiple containers together.

**Steps explained**:
1. Create a YAML file that defines your container setup.
2. `docker-compose up -d` starts the defined containers in detached mode.
3. `docker-compose exec debian bash` lets you access a running container.
