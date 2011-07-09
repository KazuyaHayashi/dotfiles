#!/bin/sh

#
# function
#
function backup()
{
    if [ -e ~/${BACKUP_DIR} ]; then
        mkdir -p ~/${BACKUP_DIR}/input
        if [ -L ~/.inputrc ]; then
            return 1
        fi
        mv ~/.inputrc ~/${BACKUP_DIR}/input
    fi
    return 0
}

function setup()
{
    ln -s ${CUR_DIR}/input/inputrc ~/.inputrc
}

#
# main
#
backup
echo "install inputrc"
setup
