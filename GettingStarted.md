# Getting Started

This document provides a step-by-step guide to setting up SSH keys for Git on a Windows machine using PowerShell or Command Prompt and then cloning a repository. SSH keys provide a secure way to access Git repositories without the need to enter your username and password each time.

## Prerequisites

1. **Git**: Make sure Git is installed on your Windows machine. You can download it from [Git's official website](https://git-scm.com/downloads).
2. **PowerShell or Command Prompt**: These are built into Windows and will be used to run the commands.

## Steps to Set Up SSH Keys

### Step 1: Check for Existing SSH Keys

Before generating a new SSH key, check if there are existing keys on your machine.

1. Open **PowerShell** or **Command Prompt**.
2. Run the following command to see if any SSH keys already exist:

    ```powershell
    dir ~/.ssh
    ```

3. If you see files like `id_rsa` and `id_rsa.pub`, you already have SSH keys. You can either use these keys or create new ones.

### Step 2: Generate a New SSH Key

1. Run the following command to generate a new SSH key:

    ```powershell
    ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
    ```

    Replace `"your_email@example.com"` with the email address you use for Git.

2. When prompted to "Enter a file in which to save the key," press **Enter** to accept the default location (`/c/Users/your_user/.ssh/id_rsa`).

3. You will then be prompted to enter a passphrase. This is optional but recommended for added security. If you choose to enter a passphrase, make sure to remember it, as you'll need it to use the key.

### Step 3: Add the SSH Key to the SSH Agent

1. Ensure the SSH agent is running by executing:

    ```powershell
    Start-Service ssh-agent
    ```

2. Add your SSH key to the SSH agent:

    ```powershell
    ssh-add ~/.ssh/id_rsa
    ```

### Step 4: Add the SSH Key to Your GitHub Account (or other Git service)

1. Copy the SSH key to your clipboard:

    ```powershell
    Get-Content ~/.ssh/id_rsa.pub | clip
    ```

2. Go to your GitHub account (or other Git service you use).
3. Navigate to **Settings** > **SSH and GPG keys** > **New SSH key**.
4. Paste the copied SSH key into the "Key" field and give it a recognizable title.
5. Click **Add SSH key**.

### Step 5: Test Your SSH Connection

1. Run the following command to test your SSH connection:

    ```powershell
    ssh -T git@github.com
    ```

    Replace `git@github.com` with the appropriate address for your Git service if you're not using GitHub.

2. If everything is set up correctly, you should see a message like:

    ```powershell
    Hi your_username! You've successfully authenticated, but GitHub does not provide shell access.
    ```

## Steps to Clone a Repository

### Step 6: Make a Directory Called `work`

1. In **PowerShell** or **Command Prompt**, navigate to the location where you want to create the new directory:

    ```powershell
    cd /path/to/your/preferred/location
    ```

2. Create a new directory called `work`:

    ```powershell
    mkdir work
    ```

3. Navigate into the newly created `work` directory:

    ```powershell
    cd work
    ```

### Step 7: Clone the Repository

1. Clone the repository using SSH:

    ```powershell
    git clone git@github.com:majumdersubhanu/zenith_design_system.git
    ```

### Step 8: Run `pub get`

1. Navigate into the cloned repository's directory:

    ```powershell
    cd zenith_design_system
    ```

2. Run the following command to get the necessary packages:

    ```powershell
    pub get
    ```

### Step 9: Setup your branch

1. Navigate into the cloned repository's directory:

    ```powershell
    cd zenith_design_system
    ```

2. Run the following command:

    ```powershell
    git checkout -b <branch-name>
    ```

## Conclusion

You have now set up SSH keys for Git on your Windows machine using PowerShell or Command Prompt, created a directory called `work`, cloned the `zenith_design_system` repository, and run `pub get` to fetch the necessary packages. This setup will allow you to securely access and work on your Git repositories.
