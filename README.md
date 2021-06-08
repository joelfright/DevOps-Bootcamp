# DevOps Bootcamp

## Introduction to DevOps

- Breaking down silos and bringing developers and operations closer together
- Share responsibilities 
- Deploy infrastructure as code
- Automate the deployment pipleine as much as possible
- Supported by strong CI/CD pratices

## Linux commands that also work on Bash

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
- To install nginx `sudo apt-get install nginx -y`

### Vagrant

- To initialise vagrant `vagrat init`
- To start vagrant `vagrant up`
- To SSH into vagrant `vagrant ssh`
- To suspend the vagrant `vagrant suspend`
- To reload vagrant `vagrant reload`
- To destroy vagrant `vagrant destroy`