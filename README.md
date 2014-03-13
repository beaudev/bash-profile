**bash-profile** is a simple way to integrate some useful functions and aliases in your bash session. It uses mostly gist

##Installation

### One-liner install
The installation could be performed with that one liner :
    curl -sS https://raw.github.com/beaudev/bash-profile/master/install-bash-profile.sh|bash

What this script is doing is:

* Create (if needed) one directory to hold the bash-profile "glue script" with the default script/conf to include
* Create (if needed) a directory to hold your own scripts defined in your ~/.my-bash-profile.conf file
* source the bash-profile at the end of your `~/.bashrc` (simplest way to have it in most of your bash sessions

##Configuration
###Overwrite default configuration
In order to configure bash-profile to your need, create a `.my-bash-profile.conf` file in your home, it will overwrite the default one located in `~/.bash-profile.d/my-bash-profile.conf`

###Add Gist(s) to your bash-profile
In order to add scripts/aliases, you will need to create public gist and you need to define your `BASH_GIST_SCRIPTS` array in `.my-bash-profile.conf` , which looks like :

    BASH_GIST_SCRIPTS=(
     '9147961'
     '9513921'
     '9514322'
     )

That mean that those 3 gists will be synchronized in your bash-profile directory **and** will be sourced

