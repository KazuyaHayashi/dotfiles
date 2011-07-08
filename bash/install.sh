#!/bin/sh

function setup()
{
    ln -s `pwd`/bashrc ~/.bashrc
}

echo "install bashrc"
setup()
