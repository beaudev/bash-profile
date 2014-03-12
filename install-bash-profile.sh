#!/bin/sh

PROFILE_REPO="https://github.com/beaudev/bash-profile.git"
PROFILE_PATH=".bash-profile.d"
BASH_PROFILE=".bash_profile"

[ ! type -p git ]&&  echo "'git' command not found. Please install git first." && exit 1

cd "$HOME"
git clone ${PROFILE_REPO} ${PROFILE_PATH}

if [ -f ${BASH_PROFILE} -a ! -f ${BASH_PROFILE}.default ]; then
  echo "Moving current ${BASH_PROFILE} to ${PROFILE_PATH}/${BASH_PROFILE}.default"
  mv ${BASH_PROFILE} ${PROFILE_PATH}/${BASH_PROFILE}.default
fi

ln -s PROFILE_PATH .bash_profile

echo "source ~/${PROFILE_PATH}/bash-profile" > ${BASH_PROFILE}
