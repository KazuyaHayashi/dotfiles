#!/bin/sh

#
# global 
#
export CUR_DIR=`pwd`
export BACKUP_DIR=.rc_backup

#
# const
#
INSTALLER=install.sh
LOG=.dotfiles_install.log

#
# function
#
function write_log()
{
    echo $@ >> ~/${LOG}
}

function backup_setup()
{
    mkdir -p ~/${BACKUP_DIR}
}

function setup()
{
    for install_script in `ls -R */${INSTALLER}`
    do
        write_log "${CUR_DIR}/${directory}/${INSTALLER}"
        sh ${CUR_DIR}/${directory}/${INSTALLER}
    done
}

#
# main
#
backup_setup
setup
