# DevOps Bootcamp

#test

## Repos Created During the Course

- [Vagrant and how to set up the environment](https://github.com/joelfright/DevEnvironments/blob/master/Vagrant.md)
- [Cloud Computing and AWS](https://github.com/joelfright/CloudComputing)

## Introduction to DevOps

- Breaking down silos and bringing developers and operations closer together
- Share responsibilities 
- Deploy infrastructure as code
- Automate the deployment pipleine as much as possible
- Supported by strong CI/CD pratices

## Linux Commands

### Folder and Command Line

- Create a dir `mkr name_of_the_dir`.
- Go inside the dir `cd name_of_the_dir`.
- Come out of the dir `cd ..` or `cd`.
- Who am I `uname -a`.
- Where am I `pwd`.
- Create a file `touch name_of_the_file` or `nano file_name` you land inside the file.
- Exit nano `ctrl x` then `y` then `enter`.
- List all `ls -a` or `ls`.
- To see the content of the file on the terminal `cat file_name`.
- Clear your screen `clear`.
- Delete a file `rm -rf name_of_the_file`.
- Delete a folder `rm -d directory_name` or `rmdir directory`.

### Linux Systems / Programs

- To update the linux system `sudo apt-get update -y`.
- To install nginx `sudo apt-get install nginx -y`.
- To uninstall nginx `sudo apt-get remove nginx -y`.

### More Linux

- To see processes `top`.
- To become root user `sudo su`.
- To see the history of commands `history`.
- To check the status of a process `systemctl status process_name`.
- To stop a process `systemctl stop process_name`.
- To restart a process `systemctl restart process_name`.
- To make a script you must write `#!/bin/bash` at the start of the file and use a `.sh` file type.
- To run a file type `sudo bash ./file_name.sh`.
- To change a files mode to executable `sudo chmod +x file_name.sh`.
- Once executable, run a script by making it `sudo ./provision.sh`.

### Environment Variables

- To see environment variables `printenv` or `printenv variable_name`.
- To create an environment variable `export name_of_variable=value`.
- These files save the environment variables `~/.bashrc`, `~/.profile`, `~/.bash_profile`.

### Vagrant

- To initialise vagrant `vagrat init`.
- To start vagrant `vagrant up`.
- To SSH into vagrant `vagrant ssh`.
- To suspend the vagrant `vagrant suspend`.
- To reload vagrant `vagrant reload`.
- To destroy vagrant `vagrant destroy`.

### Possible Linux Commands for Interview

- To see hidden files, use `ls -a`
- The wildcards are `*` for zero or more, `?` for a single character and `[]` to represent a range of characters, for example `ls b*` will lead to `barry.txt blah.txt and bob`.
- To list processes use `ps -ef`.
- To kill a specific process use `kill -9 PID`.
- `bg` is used to resume suspended jobs whilst keep them in the background.
- `fg` continues a stopped job by running it in the foreground.
- `r` makes it readable.
- `w` makes it writable.
- `x` makes it executable.
- `777` allows all control.
- `400` allows the owner to read.
- `600` allows the owner to read and write.
- To print the final few lines of a file use `tail`.
- To print the first few lines of a file use `head`.
- To sort using a variety of different options use `sort (option) <filename>`.
- To count a certain type of data use `wc`. Some examples include `-l` for lines or `-w` for words.
- `Piping` and `redirection` is the means by which we may connect these streams between programs and files to direct data in interesting and useful ways.
- `STDIN (0)` is a standard input (data fed into the program)
- `STDOUT (1)` is a standard output (data printed by the program, defaults to the terminal)
- `STDERR (2)` is a standard error (for error messages, also defaults to the terminal)
- A simple example of piping and redirection can be seen below where the ls is piped into an output that can then be read like a text file.
```
user@bash: ls
    barry.txt bob example.png firstfile foo1 video.mpeg
user@bash: ls > myoutput
user@bash: ls
    barry.txt bob example.png firstfile foo1 myoutput video.mpeg
user@bash: cat myoutput
    barry.txt
    bob
    example.png
    firstfile
    foo1
    myoutput
    video.mpeg
```

### Permissions 

```
Linux permissions dictate 3 things you may do with a file, read, write and execute. They are referred to in Linux by a single letter each.

__r__ (read) - you may view the contents of the file.
__w__ (write) - you may change the contents of the file.
__x__ (execute) - you may execute or run the file if it is a program or script.

For every file we define 3 sets of people for whom we may specify permissions.

--- Owner ---

The user who owns the file. Typically the person who created the file but ownership can be changed.

--- Group ---

Every file belongs to a single group. Groups can have many users in it so you can give access to multiple people.

--- Others ---

Everyone else who is not in the group or the owner.
Three persmissions and three groups of people. That's about all there is to permissions really. Now let's see how we can view and change them.

--- View Permissions ---

To view permissions for a file we use the long listing option for the command ls.
ls -l [path]

--- Change Permissions ---

To change permissions on a file or directory we use a command called "chmod" It stands for change file mode bits which is a bit of a mouthfull but think of the mode bits as the permission indicators.
chmod [permissions] [path]
chmod has permission arguments that are made up of 3 components
There are two ways you can use chmod and you will see both used. One is shorter and one is more descriptive.
```

## Diagrams

### Flow Diagram for Vagrant
![Flow diagram for vagrant](images/flowdiagram.png)

### Vagrant Structure
![Vagrant Structure diagram](images/vagrantdiagram.png)
