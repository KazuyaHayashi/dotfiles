#!/bin/sh

INSTALLER=install.sh
CUR_DIR=`pwd`

for directory in `ls ${CUR_DIR}`
do
    if [ -d ${CUR_DIR}/${directory} ]; then
        sh ${CUR_DIR}/${directory}/${INSTALLER}
    fi
done

