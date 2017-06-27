**bash-profile** is a simple way to integrate some useful functions and aliases in your bash session. It uses mostly gist.

## General philosophy

This glue script is mostly used on my workstations, use it at your own risk ;)
I host some of the useful scripts I'm using, either on gist or github, as it easy and efficient. 

The convention is as simple as, if **bash-profile** find a script either in the ``scripts/`` directory (for github hosted scripts) or in the ``gist_scripts`` (for gist scripts), he will source them.

### Gist Scripts
Any gist defining a bash function in a ``.sh`` file will be sourced


### Github Scripts
As soon as a github script is defined (through submodules) he will be sourced with the name if the script file in the github repository is the same as the repository name. THink of it as the entry point, you can then import and read directories within that repository.

## Installation
### One-liner install
The installation could be performed with that one liner (yeah, curl is needed...) :

    curl -sSL https://raw.githubusercontent.com/beaudev/bash-profile/master/install-bash-profile.sh|bash

What this script is doing is:

* Create (if needed) one directory to hold the bash-profile "glue script" with the default configuration to include
* Create (if needed) a directory to hold your own scripts defined in your `~/.my-bash-profile.conf` file
* source the bash-profile at the end of your `~/.bashrc` (simplest way to have it in most of your bash sessions

## Configuration
### Overwrite default configuration
In order to configure bash-profile to your need, create a `.my-bash-profile.conf` file in your home, it will overwrite the default one located in `~/.bash-profile.d/my-bash-profile.conf`

### Add "Github script"

you can add github scripts thanks to the git modules, just add a submodule with the wanted github script.

Github script are just a simple way to call compatible github repository with ``bash-profile``,  

### Add Gist(s) to your bash-profile
In order to add scripts/aliases, you will need to create public gist and you need to define your `BASH_GIST_SCRIPTS` array in `.my-bash-profile.conf` , which looks like :

    BASH_GIST_SCRIPTS=(
     '9147961'
     '9513921'
     '9514322'
     )

That mean that those 3 gists will be synchronized in your bash-profile directory (only if they have never been installed yet) **and** will be sourced (through `~/.bashrc` file). The `Id` of the gist can be found in any gist url, usually after the name of the gist author, and is the name of the git repository holding the gist (ex : https://gist.github.com/9147961.git).


## Existing scripts
### Gist scripts
Check the current default [gist scripts list](my-bash-profile.conf)
 

### Github scripts
Some examples:

#### https://github.com/beaudev/create-nginx-vhost.git
Deploy nginx vhost for all kind of services (symfony, silex) and different setup

#### https://github.com/beaudev/db_tools.git
bash profile mysql db tools useful scripts
