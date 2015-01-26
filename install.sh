#!/bin/bash

[ $USER == "root" ] && echo "You should not install this for the root account." && exit 1

export CURRENT=${HOME}/Config

if [ ! -d ~/.vim ]; then
  git clone git@github.com:mockee/vitamine.git ~/.vim
  cd ~/.vim && git submodule init && git submodule update
fi

if [ ! -d ${HOME}/.vim/conf ]; then
   mkdir -p ${HOME}/.vim/conf
fi

ln -s ${CURRENT}/go/go.vim ${HOME}/.vim/conf/go.vim;

cp ${CURRENT}/vim/vimrc ~/.vim/vimrc.vim
echo source ~/.vim/vimrc.vim > ~/.vimrc

[ -f ~/.vimrc ] || ln -s ~/.vim/vimrc.vim ~/.vimrc
[ -f ~/.gitconfig ] || ln -s ${CURRENT}/git/gitconfig ~/.gitconfig
[ -f ~/.gitignore_global ] || ln -s ${CURRENT}/git/gitignore_global ~/.gitignore_global
[ -f ~/.bash_profile ] || ln -s ${CURRENT}/bash_profile ~/.bash_profile
[ -f ~/.tmux.conf ] || ln -s ${CURRENT}/tmux.conf ~/.tmux.conf
[ -f ~/.nanorc ] || ln -s ${CURRENT}/nanorc ~/.nanorc