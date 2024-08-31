## Forking, Cloning, Branching, and Submitting a Pull Request Using Git and GitHub CLI

This tutorial will guide you through the complete process of forking a repository, cloning it to your local machine, creating a new branch, working on it, committing your changes, pushing those changes to your forked repository, and finally submitting a pull request (PR) to the original repository. All operations will be performed using `git` and the GitHub CLI (`gh`) from the terminal.

### 1. Forking a Repository

First, you need to fork the repository to your GitHub account. You can do this using the GitHub CLI (`gh`).

```bash
gh repo fork <repository-ssh-link>
```

Replace `<repository-ssh-link>` with the SSH link of the repository you want to fork.

### 2. Cloning the Forked Repository

After forking the repository, you can clone it to your local machine:

```bash
gh repo clone <your-forked-repo-ssh-link>
```

Replace `<your-forked-repo-ssh-link>` with the SSH link of your forked repository.

#### Cloning a Specific Branch

If you want to clone a specific branch, use:

```bash
git clone --branch <branch-name> <your-forked-repo-ssh-link>
```

Replace `<branch-name>` with the name of the branch you want to clone.

#### Cloning All Branches

To clone all branches of the repository:

```bash
git clone <your-forked-repo-ssh-link> --mirror
```

This command will clone the entire repository, including all branches.

### 3. Initializing Git (If Needed)

If your repository is not already initialized with Git (which it typically would be), you can initialize it using:

```bash
git init
```

### 4. Creating a New Branch

To create a new branch where you can work on your changes:

```bash
git checkout -b <new-branch-name>
```

Replace `<new-branch-name>` with a meaningful name for your new branch.

### 5. Making Changes

Now, you can make changes to the files in your repository. Once you've made the desired changes:

### 6. Staging Your Changes

To stage all the changes you've made:

```bash
git add .
```

### 7. Committing Your Changes

After staging, commit your changes with a descriptive message:

```bash
git commit -m "Your commit message here"
```

### 8. Adding Your Fork as the Remote Repository

Before pushing your changes, ensure that the remote repository points to your fork. You can do this by adding your fork's URL as the `origin`:

```bash
git remote add origin <your-forked-repo-ssh-link>
```

Replace `<your-forked-repo-ssh-link>` with the SSH link of your forked repository.

### 9. Pushing Your Changes

Push your changes to the new branch in your forked repository:

```bash
git push origin <new-branch-name>
```

Replace `<new-branch-name>` with the name of the branch you created earlier.

### 10. Creating a Pull Request (PR)

To submit your changes to the original repository as a pull request, use the GitHub CLI:

```bash
gh pr create --base <original-repo-branch> --head <your-forked-repo>:<new-branch-name> --title "PR Title" --body "Detailed description of your changes"
```

- `<original-repo-branch>`: The branch of the original repository you want to merge your changes into (e.g., `main`).
- `<your-forked-repo>`: Your GitHub username or the name of your forked repository.
- `<new-branch-name>`: The branch where your changes are located.

### 11. Managing the PR

You can use `gh` to view and manage your pull request:

```bash
gh pr view
gh pr status
```

---

[Click here to Fork This repo](github.com/mantejjosan/tutorials/CollaborateOnGithub/PrWithGhCli)
