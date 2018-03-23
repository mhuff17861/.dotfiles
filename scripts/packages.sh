#!/bin/bash

sudo apt-get -y install \
	conky-all \
	cmake \
	ctags \
	curl \
	feh \
	git \
	i3 i3-wm i3lock i3status \
	jq \
	python-pip python-setuptools \
	vim \
	zsh

python -m ensurepip --user
python -m pip install --user --upgrade pip
python -m pip install --user --upgrade virtualenv
