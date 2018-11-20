# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
#export ZSH=$HOME/.oh-my-zsh

bindkey -v

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
if [[ $TERM =~ .*256colors ]]; then
	ZSH_THEME="agnoster"
fi

DEFAULT_USER=xqh

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
#plugins=(git wd zsh-navigation-tools colored-man-pages colorize compleat copydir copyfile cp history tmux)

#source $ZSH/oh-my-zsh.sh

# User configuration
source ~/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle vi-mode
antigen bundle extract
antigen bundle git
antigen bundle pip
antigen bundle python
antigen bundle virtualenv
antigen bundle command-not-found
antigen bundle wd
antigen bundle zsh-navigation-tools
antigen bundle colored-man-pages
antigen bundle colorize
antigen bundle copydir
antigen bundle copyfile
antigen bundle cp
antigen bundle sudo
antigen bundle tmux
antigen bundle pipenv

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle joel-porquet/zsh-dircolors-solarized.git

# Load the theme.
antigen theme agnoster

# Tell Antigen that you're done.
antigen apply
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=13'
# export MANPATH="/usr/local/man:$MANPATH"
export LD_LIBRARY_PATH=/usr/local/cuda-9.0/lib64\ ${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
PATH="$PATH:/usr/lib/go-1.9:/usr/lib/go-1.9/bin:/store/android-sdk-linux/platform-tools:/usr/local/cuda-9.0/bin"
JAVA_HOME="/usr/lib/jdk1.8.0_112/"
javaHome="/usr/lib/jdk1.8.0_112/"
export JAVA_HOME javaHome PATH LD_LIBRARY_PATH

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="vim ~/.zshrc"
#alias ohmyzsh="vim ~/.oh-my-zsh"
alias ls='ls -a --color=auto'
alias ll='ls -alF --color=auto'
alias vultr='ssh xqh@149.28.112.42 -p 222 -i ~/.ssh/xqh_rsa'

alias -s log="less -MN"

# exercism cli command completion
alias vultrfs='sshfs xqh@149.28.112.42:/home/xqh/ /media/xqh/vultr -C -p 222 -o IdentityFile=~/.ssh/xqh_rsa'
alias mgtv='you-get --format=hd -p mpv'

alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias zeal='zeal -stylesheet=/store/style.qss'
