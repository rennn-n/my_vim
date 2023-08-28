#!/bin/sh
CURRENT=$(cd $(dirname $0);pwd)
ln -s $CURRENT/.vimrc $HOME/.vimrc

ln -s $CURRENT/.vim $HOME/.vim
