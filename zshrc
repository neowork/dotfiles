autoload -U compinit && compinit
autoload zmv
unalias run-help &>/dev/null
autoload run-help
HELPDIR=/usr/local/share/zsh/help

# Aliases
if [ -f ~/.zshrc.aliases ]; then
  source ~/.zshrc.aliases
fi

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

export LC_ALL=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export LANG=en_US.UTF-8
export PATH=/usr/local/sbin:/usr/local/bin:$PATH
export PATH="/usr/local/heroku/bin:$PATH"
export EDITOR=vim

# Private ENV vars
if [ -f ~/.zshrc.env ]; then
  source ~/.zshrc.env
fi

unsetopt correct_all

# Customize to your needs...
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Tmuxinator config
if [ -f ~/.tmuxinator.zsh ]; then
  source ~/.tmuxinator.zsh
fi

# Antibody
source ~/.zsh_plugins.sh
autoload -U promptinit; promptinit
setopt noprompt{bang,cr,percent,subst} "prompt${^prompt_opts[@]}"
