#!/bin/bash

### install packages ###
sudo apt install -y \
	cmake \
	ctags \
	curl \
	feh \
	git \
	jq \
	python-pip python-setuptools \
  tmux \
	zsh

### upgrade pip and install packages ###
pip3 install --upgrade pip --user
pip3 install --upgrade neovim --user
