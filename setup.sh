#!/bin/sh

set -e

mkdir -p ~/.vim/{bundle,colors}

if ! [[ -d ~/.vim/bundle/vundle ]]; then
  git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
fi

if ! [[ -d ~/.vim/bundle/vim-yyukan ]]; then
  git clone http://github.com/yyukan/vim-yyukan.git ~/.vim/bundle/vim-yyukan
fi

test -f ~/.vimrc && mv ~/.vimrc ~/.vimrc.bak

ln -s ~/.vim/bundle/vim-yyukan/vimrc ~/.vimrc

vim +PluginInstall +qall
