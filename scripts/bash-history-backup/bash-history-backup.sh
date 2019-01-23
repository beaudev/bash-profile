#!/bin/bash
bash-history-backup(){
  [ ! -z $1 ] && path=$1 || path=/srv/hoa-utils/bash-histories/`hostname`
  date=`date +"%Y%m%d"`
  mkdir -p $path
  for file in bash_history bash_eternal_history; do
    [ -f ~/.${file} ] && cp ~/.${file} ${path}/${date}_${file}.txt
  done
  echo "bash histories saved for host `hostname` in $path"
}
