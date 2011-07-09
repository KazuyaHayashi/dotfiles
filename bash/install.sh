#!/bin/sh

#
# function
#
function backup()
{
    if [ -e ~/${BACKUP_DIR} ]; then
        mkdir -p ~/${BACKUP_DIR}/bash
        if [ -L ~/.bashrc ]; then
            return 1
        fi
        mv ~/.bashrc ~/${BACKUP_DIR}/bash 
    fi
}

function setup()
{
    ln -s ${CUR_DIR}/bash/bashrc ~/.bashrc
}

#
# main
#
backup
echo "install bashrc"
setup
