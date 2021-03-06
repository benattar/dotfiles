# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="superjarin"

# Example aliases
alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git knife brew git github gnu-utils vagrant gnu-tools osx jira knife pip rvm thor)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=~/.bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin
export EDITOR="/usr/bin/vim"
unsetopt correct_all
source ~/.profile

# Source local configs (files we don't intend to put into source control)
if [ -f ~/.aliases.local ]; then
source $HOME/.aliases.local
fi

if [ -f ~/.chef/env ]; then
source $HOME/.chef/env
fi

if [ -f ~/.profile.local ]; then
source $HOME/.profile.local
fi
