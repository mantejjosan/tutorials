# How to Set Up a Persistent Live USB with Linux, Nginx, and Frappe

This guide will help you create a **Persistent Live USB** running Linux, set up **Nginx** as a web server, and install **Frappe** on your laptop. By the end, you'll have a fully functional web server running on your USB that retains changes after reboot.

## Requirements

- **14.5 GB USB drive** (or larger)
- A laptop with **64-bit processor** capable of booting from USB
- A tool like **Rufus** or **UNetbootin**
- A **Linux ISO** (e.g., Ubuntu Server or Debian)
- An internet connection (for downloading packages during the setup)

---

## Step 1: Download a 64-bit Linux ISO

First, download the ISO file of a lightweight Linux server distribution. You can use one of the following options:

- **[Ubuntu Server 64-bit](https://ubuntu.com/download/server)**
- **[Debian 64-bit](https://www.debian.org/distrib/)**

This ISO will be used to create the persistent live USB.

---

## Step 2: Create a Persistent Live USB

1. Download **[Rufus](https://rufus.ie/)** or **[UNetbootin](https://unetbootin.github.io/)**, tools that help create bootable USB drives.

2. Insert your USB drive into your computer.

3. Open **Rufus** or **UNetbootin** and follow these steps:
   - **Select your USB drive**.
   - **Choose the Linux ISO** you downloaded.
   - Enable **persistence** and allocate at least **4 GB** of persistent storage (you can allocate more if needed).
   
4. Click **Start** to begin the process. Once done, your USB will be bootable with persistent storage.

---

## Step 3: Boot from the USB

1. Insert the USB drive into your laptop and **restart** your machine.

2. Enter your laptop’s **BIOS/boot menu** by pressing the appropriate key during startup (typically F12, F2, ESC, or DEL).

3. Select the **USB drive** as the boot option and press **Enter**.

4. Your laptop will now boot into the Linux environment from the USB.

---

## Step 4: Install and Set Up Nginx

Now that you're booted into Linux, you can install **Nginx** as your web server.

### Update the System

First, make sure your system is up to date:
```bash
sudo apt update
sudo apt upgrade
```

### Install Nginx

To install **Nginx**, run the following command:
```bash
sudo apt install nginx
```

### Start Nginx and Enable on Boot

Start the Nginx service and ensure it starts automatically on every boot:
```bash
sudo systemctl start nginx
sudo systemctl enable nginx
```

### Test Nginx

After installation, you can test if Nginx is running by opening a browser and navigating to `http://localhost`. If everything is set up correctly, you should see the Nginx default page.

---

## Step 5: Install Frappe

Frappe is the framework required to run **ERPNext** or any **Frappe app**. Here’s how to install it.

### Install Required Dependencies

Before installing **Frappe**, install the required packages:
```bash
sudo apt install python3-dev python3-setuptools python3-pip mariadb-server redis-server
sudo apt install build-essential libssl-dev libffi-dev nodejs npm
```

### Install `bench`

`bench` is the command-line tool used to manage Frappe apps.

1. Install `bench` via pip:
   ```bash
   sudo pip3 install frappe-bench
   ```

2. Create a new `bench` directory:
   ```bash
   bench init --frappe-branch version-14 frappe-bench
   ```

3. Navigate to the newly created `frappe-bench` directory:
   ```bash
   cd frappe-bench
   ```

4. Create a new **Frappe site**:
   ```bash
   bench new-site mysite.local
   ```

### Set Up Frappe with Nginx

Frappe uses Nginx as a reverse proxy. To set it up:

1. Run this command to generate the Nginx config for your site:
   ```bash
   bench setup nginx
   ```

2. Apply the Nginx configuration:
   ```bash
   sudo cp /home/yourusername/frappe-bench/config/nginx.conf /etc/nginx/nginx.conf
   sudo systemctl restart nginx
   ```

Your **Frappe** app should now be running on **Nginx**.

---

## Step 6: Save Configurations (Persistence)

Since you're using a **persistent USB**, all changes (like Nginx configurations, Frappe installations, etc.) will be saved, and the setup will persist after a reboot. This allows you to continue using the setup without re-installing everything.

---

## Additional Tips

- To keep your USB drive organized and minimize storage usage, periodically remove any unnecessary files or logs.
- Make sure the **persistence file size** on your USB is large enough to store your web server configuration and any Frappe apps you plan to develop.
- If your USB drive gets full, consider moving large databases or files to an external drive or cloud storage.

---

By following these steps, you’ve successfully set up a **persistent live USB** running **Linux**, **Nginx**, and **Frappe** on your laptop. You can now run your web server from the USB without affecting your Windows installation!

--- 

## Conclusion

This setup provides a **risk-free** way to test and use Frappe and Nginx without making any changes to your laptop’s internal storage. You can carry the USB around and use it on different machines, making your laptop a portable web server environment.

