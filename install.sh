#!/bin/sh

# global 
export CUR_DIR=`pwd`
# const
INSTALLER=install.sh

for directory in `ls ${CUR_DIR}`
do
    if [ -d ${CUR_DIR}/${directory} ]; then
        sh ${CUR_DIR}/${directory}/${INSTALLER}
    fi
done

