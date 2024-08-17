# Tutorial: Installing Docker and Running Debian 12 on Windows 10

## 1. Install Docker Desktop on Windows 10

1. Ensure your system meets the requirements:
   - Windows 10 64-bit: Pro, Enterprise, or Education (Build 16299 or later)
   - Hyper-V and Containers Windows features must be enabled

2. Download Docker Desktop for Windows from the official website:
   https://www.docker.com/products/docker-desktop

3. Run the installer and follow the prompts.

4. After installation, restart your computer.

## 2. Start Docker Desktop

1. Launch Docker Desktop from the Start menu.
2. Wait for Docker to start (the whale icon in the taskbar will stop animating).

## 3. Open PowerShell or Command Prompt

Open PowerShell or Command Prompt as an administrator.

## 4. Pull and Run Debian 12 Container

1. Pull the Debian 12 image:
   ```
   docker pull debian:12
   ```

2. Run a Debian 12 container:
   ```
   docker run -it debian:12 /bin/bash
   ```

You're now inside a Debian 12 environment!

## 5. Using Your Debian Container

- You can install packages using `apt`:
  ```
  apt update
  apt install <package-name>
  ```

- To exit the container, type `exit` or press Ctrl+D.

## 6. Managing Your Container

- List running containers:
  ```
  docker ps
  ```

- Stop a container:
  ```
  docker stop <container-id>
  ```

- Remove a container:
  ```
  docker rm <container-id>
  ```

## 7. Creating a Persistent Debian Environment

To create a persistent Debian environment:

1. Create a named container:
   ```
   docker run -it --name my-debian debian:12 /bin/bash
   ```

2. Exit the container when done.

3. To start and attach to this container later:
   ```
   docker start -ai my-debian
   ```

## 8. Using Docker Compose (Optional)

For more complex setups, you can use Docker Compose:

1. Create a `docker-compose.yml` file:
   ```yaml
   version: '3'
   services:
     debian:
       image: debian:12
       tty: true
   ```

2. Run your environment:
   ```
   docker-compose up -d
   ```

3. Access your Debian container:
   ```
   docker-compose exec debian bash
   ```

## Conclusion

You now have a working Debian 12 environment in Docker on Windows 10. This setup allows you to run Debian and other containers side by side, making it easy to work with multiple environments.
