# Welcome to the Linux Subsystem!
In this guide I will walk you through setting up the Linux Subsystem for Windows 10, changing your Linux system to use the same home directory as your Windows system, and setting up your shiny new Bash terminal to use it for development.

## Preparing Your Computer
We need to check your version of Windows
Open Powershell and run <br/>
`systeminfo | Select-String "^OS Name","^OS Version"`

### OS Version 16215 and newer 
Follow [these](https://docs.microsoft.com/en-us/windows/wsl/install-win10) directions

### Older OS Versions
Follow [these](https://docs.microsoft.com/en-us/windows/wsl/install-win10#for-anniversary-update-and-creators-update-install-using-lxrun) directions

## Changing Your Home Directory
1) Open Ubuntu
2) Enter the command `sudo vim /etc/passwd` <br/>
Find your account's line, which might look like:
`beth:x:1000:1000:,,,:/home/beth:/bin/bash`
3) Open your file explorer, navigate to `C:\Users\` and find what your home directory is called. This is usually similar to the username you use to log into Windows. For example, mine is "mrsbe" <p align="center"><img src="file-explorer.png" /></p>
4) Change the home directory that we found in vim, which above is `/home/beth`, to the new directory, using WSL notation. It should look like <code>YOUR_LINUX_USERNAME:x:1000:1000:,,,:/mnt/c/Users/YOUR_HOME_DIRECTORY:/bin/bash</code>
5) Save the file
6) Exit Ubuntu and re-launch it
7) To test, use the commands: `cd ~` and `pwd`

## Updating Bash
Open Ubuntu, clone this repo, and run install.sh
```
$ git clone https://github.com/bethtelford/linux-subsystem-guide.git ~/.dotfiles
$ sudo ~/.dotfiles/install.sh
```
## Setting your VSCode integrated terminal
This part is super easy. Open VSCode, hit ` CTRL + SHIFT + P`. For the "terminal.integrated.shell.windows" key, set the value to "bash.exe"
