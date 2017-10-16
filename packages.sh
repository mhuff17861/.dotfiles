#!/bin/bash

sudo apt-get -y install \
	conky-all \
	curl \
	feh \
	gem \
	git \
	i3 i3-wm i3lock i3status \
	jq \
	python-pip python-setuptools \
	terminator \
	vim \
	zsh

python -m ensurepip --user
python -m pip install --user --upgrade pip
python -m pip install --user --upgrade virtualenv
gem install tmuxinator
