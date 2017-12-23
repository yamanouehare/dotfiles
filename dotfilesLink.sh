#!/bin/sh
function makeSymLink() {
    if [ ! -e $2 ];then
        ln -s $1 $2
        echo "Create $1 to $2 symbolic link."
    fi
}

DROPBOX_DIR="$HOME/Dropbox/dotfiles"

makeSymLink $DROPBOX_DIR/vim/.vimrc  ~/.vimrc
makeSymLink $DROPBOX_DIR/zsh/.zshenv ~/.zshenv
makeSymLink $DROPBOX_DIR/ssh         ~/.ssh
makeSymLink $DROPBOX_DIR/.gitconfig  ~/.gitconfig
