# Load zgen
source "${HOME}/.zgen/zgen.zsh"

#----------------------------------------
# Zgen
#----------------------------------------
if ! zgen saved; then

	# Load oh-my-zsh base plugins
	zgen oh-my-zsh

	# Specify particular plugins here
	zgen oh-my-zsh plugins/command-not-found
	zgen oh-my-zsh plugins/git
	zgen oh-my-zsh plugins/history
	zgen oh-my-zsh plugins/web-search
	zgen oh-my-zsh themes/ys

	# NOTE: zsh-syntax-highlighting *must* come before zsh-history-substring
	# search, else breakage occurs (or so I'm told).
	zgen load jdavis/zsh-files
	zgen load zsh-users/zsh-completions src
	zgen load zsh-users/zsh-syntax-highlighting
	zgen load zsh-users/zsh-history-substring-search

	# Use bullet train theme
	#zgen load caiogondim/bullet-train-oh-my-zsh-theme bullet-train
	zgen load win0err/aphrodite-terminal-theme aphrodite

	# Generate the init.zsh script
	zgen save
fi

# Remove `nvm` from BULLETTRAIN_PROMPT_ORDER, since it only works if node/nvm
# are installed, and I don't have much need for this, see:
#
#   - https://github.com/caiogondim/bullet-train.zsh/issues/192
#
#BULLETTRAIN_PROMPT_ORDER=($(echo ${BULLETTRAIN_PROMPT_ORDER[@]/#%nvm}))

#----------------------------------------
# Aliases
#----------------------------------------
alias ls='ls --color=auto'
alias ll='ls -l --color=auto'
alias la='ls -la --color=auto'
alias dirs='dirs -v'
alias dd='dd status=progress'
alias c='clear'
alias grep='grep --color=auto'
alias vim='nvim'

export TERM='xterm-256color'
export EDITOR='nvim'
unset GREP_OPTIONS

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
