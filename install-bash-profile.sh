#!/bin/bash

PROFILE_REPO="https://github.com/beaudev/bash-profile.git"

command -v git >/dev/null 2>&1  || { echo "'git' command not found. Please install git first." && exit 1; }

#Get global conf
source <(curl -sSL https://raw.github.com/beaudev/bash-profile/master/bash-profile.conf)


TMPDIR=$(mktemp -d 2>/dev/null || mktemp -d -t '/tmp/bashprofile')

# setup bash-profile
cd "$HOME"
[ ! -d ${PROFILE_PATH} ] && git clone ${PROFILE_REPO} ${PROFILE_PATH} || (cd ${PROFILE_PATH} && git pull && echo "bash-profile updated" )

#configure bash-profile
if [ "x`grep "source ~/${PROFILE_PATH}/bash-profile" $HOME/.bashrc`" == "x" ]; then
    echo "[ -f ~/${PROFILE_PATH}/bash-profile ] && source ~/${PROFILE_PATH}/bash-profile">>$HOME/.bashrc
fi

echo "Congratulation, bash-profile has been setup"
