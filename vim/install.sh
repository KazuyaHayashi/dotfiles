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

function install_neobundle()
{
    if [ ! -e ~/.vim/bundle/neobundle.vim/ ]; then
        git clone https://github.com/Shougo/neobundle.vim.git ~/.vim/bundle/neobundle.vim/
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
echo "checkout vundle"
install_neobundle
setup
