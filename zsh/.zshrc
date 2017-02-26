# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=3000
SAVEHIST=3000
setopt notify
bindkey -v
bindkey '^R' history-incremental-search-backward
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall

zstyle :compinstall filename '/home/sisyphus/.zshrc'

autoload -Uz compinit
compinit
setopt COMPLETE_ALIASES
# End of lines added by compinstall

autoload -Uz promptinit
promptinit

bindkey -v # vi bindings

# Prompt
prompt off # turn off grml's prompt
PROMPT="> "

# Syntax
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

################################################################################

# Ranger
#export TERMCMD=termite # usefull for opening programs in a new window
export RANGER_LOAD_DEFAULT_RC=False # load only configs in ~/

rg() {
    if [ -z "$RANGER_LEVEL" ]; then
        ranger
    else
        exit
    fi
}

for config (~/.zsh/*.zsh) source $config