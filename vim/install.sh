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

function install_vundle()
{
    if [ ! -e ~/.vim/bundle/vundle ]; then
        git clone git://github.com/gmarik/vundle ~/.vim/bundle/vundle
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
    ln -s ${CUR_DIR}/vim/vimrc ~/.vimrc
    vim -c BundleInstall
}

#
# main
#
backup
echo "install vimrc"
echo "make .vim directory"
init
echo "checkout vundle"
install_vundle
setup
