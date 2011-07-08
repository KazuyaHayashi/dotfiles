#!/bin/sh

function setup()
{
    ln -s `pwd`/inputrc ~/.inputrc
}

echo "install inputrc"
setup
