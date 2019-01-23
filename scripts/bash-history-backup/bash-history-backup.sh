#!/bin/bash

bash-history-backup(path=){
  [ ! -z $1 ] && path=$1 || path=/srv/hoa-utils
  target=$path/`hostname`
  mkdir -p $target
  cp ~/.bash_history $target/`date +"%Y%m%d"`_bash_history.txt
  echo "bash history saved for host `hostname` in $target"
}
