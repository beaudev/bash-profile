#!/bin/bash

PROFILE_REPO="https://github.com/beaudev/bash-profile.git"

update-bash-profile(){
    (
    cd $HOME
    [ ! -d ${PROFILE_PATH} ] && { git clone ${PROFILE_REPO} ${PROFILE_PATH};cd ${PROFILE_PATH}; git submodule init ;git submodule update; } || (cd ${PROFILE_PATH} && git pull && git submodule update)
    echo "bash-profile has been updated"
    )

}
