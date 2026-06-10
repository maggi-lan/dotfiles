# fasd
alias v='f -e nvim' 	# quick opening files with neovim
alias o='a -e xdg-open' # quick opening files with xdg-open
# important fasd commands:
# z  -> cd to most frecent directory
# zz -> interactive cd for frecent directories
# v  -> open most frecent file in neovim
# o  -> open most frecent file/directory with appropriate program
# NOTE: source `f .bashrc` -> backticks allow us to run other queries

# git
alias glogs="git log --all --graph --decorate --oneline"
alias gs="git status"
alias gc="git commit"
alias gd="git diff"
alias gds="git diff --staged"

# venv activation
alias venv="source ~/.venvs/base/bin/activate"

# nvim
alias vi="nvim"

# tmux
alias tmux="tmux -u"
alias tn="tmux new -s"
alias ta="tmux attach -t"

# xdg-open
alias open='xdg-open'

# ls
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# opencode
alias oc='opencode --port'
