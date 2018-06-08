#!/bin/bash

shopt -s expand_aliases
alias curl='curl -k'
alias wget='wget --no-check-certificate'

if ! fzf_loc="$(type -p fzf)" || [[ -z $fzf_loc ]]; then
  git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
  ~/.fzf/install
fi

shopt -u expand_aliases
unalias curl
unalias wget
