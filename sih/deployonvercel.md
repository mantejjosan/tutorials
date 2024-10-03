

# Deploy React App Online Using Vercel

If you’ve built a React app and want to share it with your teammates so they can access it online instead of running it on your local machine, follow this guide. We’ll use **Vercel**, a hosting platform specifically designed for modern web apps, to deploy your React app.

### 1. **Build Your React App for Production**

Before deploying, you need to build a production-ready version of your React app.

1. Open your terminal or command prompt and navigate to your React project’s root directory.
2. Run the following command to create a production build of your app:
   ```bash
   npm run build
   ```
3. This will generate a folder called `build/` containing all the necessary files for deployment.

### 2. **Deploying to Vercel**

Now that your app is built, let’s deploy it to Vercel. Here are the detailed steps to get your React app live:

#### **Step 1: Sign Up and Install the Vercel CLI**

1. Go to [vercel.com](https://vercel.com) and sign up for a free account. You can sign up using your GitHub, GitLab, or Bitbucket account.
   
2. Once you're signed in, install the Vercel CLI by running the following command in your terminal:
   ```bash
   npm install -g vercel
   ```
   This allows you to deploy directly from your terminal.

#### **Step 2: Connect Your Project to Vercel**

1. In the terminal, while in your React project’s root folder, run:
   ```bash
   vercel
   ```

2. The CLI will prompt you to link your project to Vercel. If you’re not logged in, it will ask for your credentials.
   - Choose the option to **create a new project**.
   - Select your team (if you have one) or choose your personal account.
   
3. The CLI will then ask you some questions regarding the setup:
   - **What’s your project’s name?**: Enter a name for your project (this will be the URL name, e.g., `your-app-name.vercel.app`).
   - **In which directory is your code located?**: Just press `Enter` if your code is in the root directory (where your `package.json` is located).
   - **Which framework do you want to use?**: Vercel will auto-detect that you are using React, so just press `Enter`.
   - **What is your output directory?**: Type `build` since that’s where your production files are stored.

#### **Step 3: Deploy Your App**

1. After answering all the questions, Vercel will start deploying your app. You’ll see some output in the terminal as it builds and uploads your files to Vercel’s servers.
   
2. Once the process is complete, Vercel will provide you with a live URL where your app is hosted. It will look something like:
   ```
   https://your-app-name.vercel.app
   ```

#### **Step 4: Share the URL**

Your app is now live on the web! Share the provided URL with your teammates, and they’ll be able to access it from any device.

### 3. **Deploying Future Updates**

Whenever you make updates to your React app, you can deploy the changes by simply running the `vercel` command again in your project’s root folder:
```bash
vercel
```
Vercel will handle the redeployment, and your live app will be updated automatically.

### **Additional Tips**
- **Custom Domain**: If you want a custom domain instead of the default `vercel.app` URL, you can easily set it up via the Vercel dashboard.
- **Environment Variables**: If your app needs environment variables (e.g., API keys), you can add them in the Vercel dashboard under **Settings > Environment Variables**.
