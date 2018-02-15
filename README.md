## Preparing Your Computer
We need to check your version of Windows
Open Powershell and run 
<code>systeminfo | Select-String "^OS Name","^OS Version"</code>

### OS Version 16215 and newer 
Follow (these)[https://docs.microsoft.com/en-us/windows/wsl/install-win10] directions

### Older OS Versions
Follow (these)[https://docs.microsoft.com/en-us/windows/wsl/install-win10#for-anniversary-update-and-creators-update-install-using-lxrun] directions

## Changing Your Home Directory
1) Open your file explorer and navigate to C:\Users\
1) Open Ubuntu
2) Enter the command  <code>sudo vim /etc/passwd</code>
Find your account's line, which might look like:
<code>beth:x:1000:1000:,,,:/home/beth:/bin/bash</code>
3) Open your file explorer, navigate to C:\Users\ and find what your home directory is called. This is usually similar to the username you use to log into Windows.
4) Change the home directory that we found in vim, which above is /home/beth, to the new directory, using WSL notation. It should look like <code>YOUR_LINUX_USERNAME:x:1000:1000:,,,:/mnt/c/Users/YOUR_HOME_DIRECTORY:/bin/bash</code>
5) Save the file
6)Exit bash and re-launch it
7) To test, use the commands:
<code>cd ~</code>
<code>pwd</code>

## Updating Bash
Open Ubuntu, clone this repo, and run install.sh
<code>
$ git clone https://github.com/bethtelford/linux-subsystem-guide.git ~/.dotfiles
$ sudo ~/.dotfiles/install.sh
</code>

