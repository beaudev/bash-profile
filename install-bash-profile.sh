#!/bin/bash

PROFILE_REPO="https://github.com/beaudev/bash-profile.git"

source bash-profile.conf

command -v git >/dev/null 2>&1  || ( echo "'git' command not found. Please install git first." && exit 1 )

cd "$HOME"
[ ! -d ${PROFILE_PATH} ] && git clone ${PROFILE_REPO} ${PROFILE_PATH} || (cd ${PROFILE_PATH} && git pull)
[ ! -d ${MY_PROFILE_PATH} ] && mkdir ${MY_PROFILE_PATH}

if [ -f ${BASH_PROFILE} -a ! -f ${BASH_PROFILE}.default ]; then
  echo "Moving current ${BASH_PROFILE} to ${PROFILE_PATH}/${BASH_PROFILE}.default"
  mv ${BASH_PROFILE} ${BASH_PROFILE}.default
fi

echo "source ~/${PROFILE_PATH}/bash-profile" > ${BASH_PROFILE}
[ -f ${BASH_PROFILE}.default ] && echo "source ${BASH_PROFILE}.default" >> ${BASH_PROFILE}

echo "bash-profile has been setup"