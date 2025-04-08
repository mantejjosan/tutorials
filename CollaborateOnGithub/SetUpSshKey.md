# Setup SSH key for using github from CLI

Setting up an SSH key for Git is a straightforward process. 
- If you are ***on windows*** open **Git Bash** and follow the process in there.  
-  If you are using linux then just open the terminal and you'd be good to go.  


### Step 1: Check for Existing SSH Keys
First, check if you already have an SSH key on your system:
```bash
ls -al ~/.ssh
```
If you see files like `id_rsa` and `id_rsa.pub`, you already have an SSH key. You can skip to **Step 3**. Otherwise, proceed to **Step 2**.

### Step 2: Generate a New SSH Key
If you don’t have an SSH key or want to create a new one, follow these steps:

1. **Generate the SSH Key:**
   Open a terminal and run:
   ```bash
   ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
   ```
   Replace `"your_email@example.com"` with your email address.

2. **Save the Key:**
   You'll be prompted to save the key:
   ```bash
   Enter file in which to save the key (/home/your_user/.ssh/id_rsa): [Press Enter]
   ```
   Press `Enter` to accept the default location.

3. **Set a Passphrase (Optional):**
   You'll be prompted to enter a passphrase:
   ```bash
   Enter passphrase (empty for no passphrase): [Your Passphrase]
   Enter same passphrase again: [Repeat Your Passphrase]
   ```
   A passphrase adds an extra layer of security, but you can leave it empty if you prefer.

### Step 3: Add the SSH Key to the SSH Agent
To ensure the SSH key is used automatically, add it to the SSH agent:

1. **Start the SSH Agent:**
   ```bash
   eval "$(ssh-agent -s)"
   ```

2. **Add the SSH Key to the Agent:**
   ```bash
   ssh-add ~/.ssh/id_rsa
   ```
   If your key has a different name, replace `id_rsa` with your key's name.

### Step 4: Add the SSH Key to Your GitHub Account
Now, you need to add your SSH key to your GitHub (or equivalent Git service) account.

1. **Copy the SSH Key to Your Clipboard:**
   ```bash
   cat ~/.ssh/id_rsa.pub
   ```
   Copy the entire output, which is your SSH public key.

2. **Add the Key to GitHub:**
   - Go to GitHub and log in.
   - Click on your profile picture in the top right and select "Settings."
   - In the sidebar, click "SSH and GPG keys."
   - Click "New SSH key" and paste the key in the "Key" field.
   - Give it a title (e.g., "My Laptop SSH Key").
   - Click "Add SSH key."

### Step 5: Test Your SSH Connection
Verify that your SSH key is correctly set up and that you can connect to GitHub:

```bash
ssh -T git@github.com
```
If everything is set up correctly, you should see a message like:
```bash
Hi username! You've successfully authenticated, but GitHub does not provide shell access.
```

### Step 6: Push Your Changes Using SSH
Now that your SSH key is set up, you can push your changes:

1. **Ensure Your Remote URL Uses SSH:**
   Check your current remote URL:
   ```bash
   git remote -v
   ```
   If the URL starts with `https://`, update it to SSH:
   ```bash
   git remote set-url origin git@github.com:username/repo.git
   ```
   Replace `username` with your GitHub username and `repo` with your repository name.

2. **Push Your Changes:**
   Now, push your changes to the remote repository:
   ```bash
   git push -u origin main
   ```

This should work without asking for a username or password since you're using SSH. If you encounter any issues or error messages during this process, let me know!
