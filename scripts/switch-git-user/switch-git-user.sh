#!/bin/bash

switch-git-user(){
  gituser=$1
  gitemail=$2
  git config --local user.name $gituser
  git config --local user.email $gitemail
}
