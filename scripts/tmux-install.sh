#!/bin/bash

sudo apt-get install -y \
  exuberant-ctags \
  cmake \
  libevent-dev \
  libncurses5-dev

if ! tmux_loc="$(command -v tmux)" || [[ -z tmux_loc ]]; then
  cd $HOME/.dotfiles/repos
  if [ -d "tmux" ]; then
    cd tmux; git pull; cd ..
  else
    git clone --recursive https://github.com/tmux/tmux.git
  fi

  cd tmux

  sudo ./autogen.sh
  sudo ./configure && make
  sudo make install
fi

