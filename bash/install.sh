#!/bin/sh

#
# function
#

# .bashrc のバックアップを行う
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

# 元の .bashrc に設定されている環境変数を取り出し
# 置き換えた bashrc で読み込めるようにする
function extract_exports()
{
    if [ -e ~/.bashrc ]; then
        if [ -L ~/.bashrc ]; then
            return 1
        fi
        grep ^export ~/.bashrc > ~/.bash_exports_origin
    fi
}

#
# main
#
extract_exports
backup
echo "install bashrc"
setup
