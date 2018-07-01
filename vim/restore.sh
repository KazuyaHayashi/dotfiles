#!/usr/bin/sh

INSTALLER=/var/tmp/installer.sh.$$
DEIN_PATH=${HOME}/.vim/dein
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > ${INSTALLER}
sh ${INSTALLER} ${DEIN_PATH}
vim -c ':call dein#install()'
