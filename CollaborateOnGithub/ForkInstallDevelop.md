# Fork, Install and Start Developing the LMS Frappe App

This tutorial will guide you through the process of forking, installing, and starting development on the Library Management System (LMS) Frappe app.

## Repository

We are working with the following repository:
[https://github.com/GreatDevelopers/library_management_system](https://github.com/GreatDevelopers/library_management_system)

## Step 1: Fork the Repository

Use the following command to fork the repository:

```
gh repo fork https://github.com/GreatDevelopers/library_management_system
```

If you haven't set up an SSH key with GitHub CLI, use the following command:

```
gh auth login
```

> **Note:** If you don't have GitHub CLI (gh) installed, you can manually fork the repository by visiting the link in your browser and clicking the "Fork" button.

## Step 2: Clone the App

> **Note:** If you're using `fm`/docker instead of ERPNext, first enter the shell using `fm shell` before executing the following command.

Use this command to clone the app:

```
bench get-app https://github.com/GreatDevelopers/library_management_system
```

## Step 3: Install the App

Install the app on your site using:

```
bench --site mysite.com install-app library_management_system
```

## Step 4: Initialize Git

Initialize Git in the cloned repository:

```
git init
```

Now you can start working on your doctypes and make commits.

## Important Notes

1. When you're ready to submit your changes, send a pull request to your forked repository.
2. After reviewing your changes in your fork, create a pull request to the original repository (GreatDevelopers' repo).

Happy developing!
