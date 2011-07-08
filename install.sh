#!/bin/sh

# global 
export CUR_DIR=`pwd`
# const
INSTALLER=install.sh
LOG=.dotfiles_install.log

function write_log()
{
    echo $@ >> ~/${LOG}
}

for directory in `ls ${CUR_DIR}`
do
    if [ -d ${CUR_DIR}/${directory} ]; then
        write_log "${CUR_DIR}/${directory}/${INSTALLER}"
        sh ${CUR_DIR}/${directory}/${INSTALLER}
    fi
done

