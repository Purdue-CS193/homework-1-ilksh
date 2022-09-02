# Setting Up SSH Shortcuts

## Description 
It can be tedious to remember different usernames, hostnames, IP addresses, and sometimes even custon private keys to connect to them. There are 2 methods you can choose for creating a ssh shortcut: using SSH Config or create aliases for your shell.

## Method 1: SSH Config
SSH on \*NIX machines, such as Linux or Mac, have default shortcut functionality, which makes it straight forward to set up too. 

### Step 1
Navigate to your .ssh folder on your local machine: `cd ~/.ssh`
![CD to SSH](https://github.com/Purdue-CS193/CS193HW1/blob/master/Screenshots/CD_to_SSH.png)

### Step 2
You'll need to create a file (or open the file) called `config`: `vim config`
![vim config](https://github.com/Purdue-CS193/CS193HW1/blob/master/Screenshots/vim_config.png)

### Step 3
From here, you can create shortcuts. You can specify the hostname, username, port, and the private key. Here's how you would do for `data`: <br>
![config](https://github.com/Purdue-CS193/CS193HW1/blob/master/Screenshots/config.png)

### Step 4
Now you can simply SSH into `data`: <br>
![ssh data](https://github.com/Purdue-CS193/CS193HW1/blob/master/Screenshots/ssh_data.png)

If this doesn't work, try changing the permissions of the `config` file by: `chmod 600 ~/.ssh/config` 

## Method 2: Create Aliases for Your Terminal
You can use this method for creating any type of shortcuts you want. Aliases are similar to keyboard shortcuts or abbreviations, they're great for simple commands.

### Step 1
Navigate to your `~/.bashrc` file: `vim ~/.bashrc` <br>
![bashrc](https://github.com/Purdue-CS193/CS193HW1/blob/master/Screenshots/bashrc.png)

### Step 2
Here, you can add as many shortcuts as you want, similar to your `~/.vimrc` file. To add an alias, here is the general structure: <br> `alias <shortcut>=“<command>”` <br>
![alias_bashrc](https://github.com/Purdue-CS193/CS193HW1/blob/master/Screenshots/alias_ssh.png) <br>
Save the file, and tell bash to reload: `source ~/.bashrc`
<br>
You should be able to now SSH into data by just typing: `data`
