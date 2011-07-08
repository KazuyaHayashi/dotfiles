#!/bin/sh

function setup()
{
    ln -s ${CUR_DIR}/bash/bashrc ~/.bashrc
    source ~/.bashrc
}

echo "install bashrc"
setup
