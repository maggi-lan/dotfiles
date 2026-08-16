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
alias ga="git add"
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

# ls/eza
alias ll='ls -alF'
alias la='ls -A'

# opencode
alias oc='opencode --port'

# few other useful aliases
alias mv="mv -i"           # -i prompts before overwrite
alias mkdir="mkdir -p"     # -p make parent dirs as needed
alias clera="clear"        # typo fix for clear
