#!/bin/sh

function setup()
{
    ln -s ${CUR_DIR}/input/inputrc ~/.inputrc
}

echo "install inputrc"
setup
