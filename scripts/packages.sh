#!/bin/bash

sudo apt-get install software-properties-common

sudo -E apt-add-repository ppa:neovim-ppa/stable
sudo apt-get update

### install packages ###
sudo apt install -y \
	cmake \
	cmus \
	ctags \
	curl \
	feh \
	fonts-font-awesome \
	git \
	htop \
	jq \
	neovim \
	python-pip python-setuptools \
	ranger \
	tmux \
	zsh \
  compton \
  firefox
