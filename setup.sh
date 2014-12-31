#!/bin/bash

[ $USER == "root" ] && echo "You should not install this for the root account." && exit 1

if [ ! -d ~/.vim ]; then
  git clone git@github.com:mockee/vitamine.git ~/.vim
  cd ~/.vim && git submodule init && git submodule update
fi

cp ~/Config/vim/vimrc ~/.vim/vimrc.vim
echo source ~/.vim/vimrc.vim > ~/.vimrc

[ -f ~/.vimrc ] || ln -s ~/.vim/vimrc.vim ~/.vimrc
[ -f ~/.gitconfig ] || ln -s Config/git/gitconfig ~/.gitconfig
[ -f ~/.gitignore_global ] || ln -s Config/git/gitignore_global ~/.gitignore_global
[ -f ~/.bash_profile ] || ln -s Config/bash/bash_profile ~/.bash_profile
[ -f ~/.tmux.conf ] || ln -s Config/tmux.conf ~/.tmux.conf


