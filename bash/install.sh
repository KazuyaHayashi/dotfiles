#!/bin/sh

function setup()
{
    ln -s ${CUR_DIR}/bash/bashrc ~/.bashrc
}

echo "install bashrc"
setup()
