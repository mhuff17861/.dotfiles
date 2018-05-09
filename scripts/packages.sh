#!/bin/bash

sudo apt install -y \
	cmake \
	ctags \
	curl \
	feh \
	git \
	i3 i3-wm i3lock i3status \
	jq \
	python-pip python-setuptools \
  tmux \
	vim \
	zsh

python -m ensurepip --user
python -m pip install --user --upgrade pip
python -m pip install --user --upgrade virtualenv
