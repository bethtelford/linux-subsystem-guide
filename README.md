# Welcome to the Linux Subsystem!
In 

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
3) Open your file explorer, navigate to `C:\Users\` and find what your home directory is called. This is usually similar to the username you use to log into Windows. For example, mine is "mrsbe"
<p align="center">
  <img src="file-explorer.png" />
</p>
4) Change the home directory that we found in vim, which above is `/home/beth`, to the new directory, using WSL notation. It should look like 
```YOUR_LINUX_USERNAME:x:1000:1000:,,,:/mnt/c/Users/YOUR_HOME_DIRECTORY:/bin/bash```
5) Save the file
6) Exit bash and re-launch it
7) To test, use the commands: <br/>
`cd ~` <br/>
`pwd`

## Updating Bash
Open Ubuntu, clone this repo, and run install.sh
```
$ git clone https://github.com/bethtelford/linux-subsystem-guide.git ~/.dotfiles
$ sudo ~/.dotfiles/install.sh
```

