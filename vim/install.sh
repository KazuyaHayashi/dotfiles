#!/bin/sh

function install_vundle()
{
    if [ ! -e ~/.vim/bundle/vundle ]; then
        git checkout git://github.com/gmarik/vundle ~/.vim/bundle/vundle
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

echo "install vimrc"
echo "make .vim directory"
init
echo "checkout vundle"
install_vundle
setup
