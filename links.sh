#!/bin/bash
# This script creates the necessary symlinks so that all of the config files
# can be found in the right place without them being separate from the repo.

# vim
ln -sf ~/git/dotfiles/vim/.vimrc ~/.vimrc
ln -sf ~/git/dotfiles/vim/.vim ~/.vim

# zsh
ln -sf ~/git/dotfiles/zsh/.zshrc ~/.zshrc
ln -sf ~/git/dotfiles/zsh/.oh-my-zsh ~/.oh-my-zsh

# i3 config
ln -f ~/git/dotfiles/i3config ~/.config/i3/config
