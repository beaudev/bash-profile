#!/bin/bash

PROFILE_REPO="https://github.com/beaudev/bash-profile.git"

#Get global conf
source <(curl -sS https://raw.github.com/beaudev/bash-profile/master/bash-profile.conf)

command -v git >/dev/null 2>&1  || ( echo "'git' command not found. Please install git first." && exit 1 )

TMPDIR=$(mktemp -d)

# setup bash-profile
cd "$HOME"
[ ! -d ${PROFILE_PATH} ] && git clone ${PROFILE_REPO} ${PROFILE_PATH} || (cd ${PROFILE_PATH} && git pull)
[ ! -d ${MY_PROFILE_PATH} ] && mkdir ${MY_PROFILE_PATH}

#configure bash-profile
if [ "x`cat $HOME/.bashrc|grep "source ~/${PROFILE_PATH}/bash-profile"`" == "x" ]; then
    echo "source ~/${PROFILE_PATH}/bash-profile">>$HOME/.bashrc
fi

echo "Congratulation, bash-profile has been setup"