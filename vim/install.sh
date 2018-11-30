#!/bin/sh

#
# function
#
function backup()
{
    if [ -e ~/${BACKUP_DIR} ]; then
        mkdir -p ~/${BACKUP_DIR}/vim
        if [ -d ~/.vim ]; then
            mv ~/.vim ~/${BACKUP_DIR}/vim
        fi
        if [ -L ~/.vimrc ]; then
            return 1
        fi
        mv ~/.vimrc ~/${BACKUP_DIR}/vim
    fi
    return 0
}

function install_dein()
{
    INSTALLER=/var/tmp/installer.sh.$$
    DEIN_PATH=${HOME}/.vim/dein
    if [ ! -e ${DEIN_PATH} ]; then
        curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > ${INSTALLER}
        sh ${INSTALLER} ${DEIN_PATH}
        vim -c ':call dein#install()'
    fi
}

function init()
{
    if [ ! -e ~/.vim ]; then
        mkdir -p ~/.vim
    fi
}

function setup()
{
    ln -s ${CUR_DIR}/vim/ftplugin ~/.vim/ftplugin
    ln -s ${CUR_DIR}/vim/ftdetect ~/.vim/ftdetect
    ln -s ${CUR_DIR}/vim/conf.d ~/.vim/conf.d
    ln -s ${CUR_DIR}/vim/vimrc ~/.vimrc
    vim -c NeoBundleInstall
}

#
# main
#
backup
echo "install vimrc"
echo "make .vim directory"
init
echo "checkout dein"
install_dein
setup
