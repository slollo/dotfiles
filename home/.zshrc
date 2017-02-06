# Path to your oh-my-zsh installation.
export ZSH=/home/lollo/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="customagnoster"
DEFAULT_USER="lollo"

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
plugins=(git zsh-syntax-highlighting colored-man vi-mode git-prompt)

# User configuration

source $ZSH/oh-my-zsh.sh

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
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

autoload -U compinit
compinit

setopt autocd
setopt correct
setopt histignoredups
setopt histignorespace
setopt multios
setopt nomatch
setopt notify

#
# History
#
HISTFILE=~/.zsh/history
SAVEHIST=5000
HISTSIZE=5000
setopt append_history
setopt inc_append_history
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_reduce_blanks

bindkey '^H' run-help
bindkey -rM vicmd 'u'
bindkey -M vicmd 'u' undo
bindkey -M vicmd '^R' redo
bindkey '^R' redo

zmodload zsh/complist

zstyle ':completion:*' completer _complete _correct _approximate
zstyle ':completion:*:correct:*' max-errors 1 numeric
zstyle ':completion:*:approximate:*' max-errors 1 numeric
#zstyle ':completion:*' menu yes select
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

hosts=(${${${(f)"$(<$HOME/.ssh/known_hosts)"}%%\ *}%%,*})
zstyle ':completion:*:hosts' hosts $hosts

LANG=uk_UA.UTF-8
LANGUAGE=uk_UA

### PS
#local NOC="%{\e[0m%}"
#local c1="%(!.%{\e[0;31m%}.%{\e[0;36m%})"
#local c2="%{\e[0;33m%}"
#local c3="%{\e[0;1;31m%}"
#local c4="%{\e[0;92m%}"
#PS1="$(print "($NOC$c1%m$NOC)($c2%?$NOC)($c3%~$NOC)$c1%#$NOC ")"
#RPS1="$(print "($c2%y$NOC)")"
PATH="/home/lollo/.bin:/usr/games:$PATH"

export CC='colorgcc'
#export LS_COLORS='or=36;41:di=01;44;37:*exe=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.rar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.cr2=01;35:*.mov=01;35:*.mpg=01;35:*.mp4=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mkv=01;35:*.m4a=01;35:*.mp3=01;35:*.wav=01;35:*.vob=01;35:*.VOB=01;35:*.pdf=01;33:*.ps=01;33:*.dvi=01;33:*.djvu=33:*.djv=33:';
export ZLS_COLORS="$LS_COLORS"
export GCC_COLORS='error=01;31:warning=01;33:note=01;32:caret=01;31:locus=01;30:quote=01;35'

#export ZLS_COLORS LS_COLORS
export EDITOR=vim

export GTK_IM_MODULE=xim
export QT_IM_MODULE=xim

export LESS_TERMCAP_mb="$(print '\e[01;31m')"
export LESS_TERMCAP_md="$(print '\e[01;37m')"
export LESS_TERMCAP_me="$(print '\e[0m')"
export LESS_TERMCAP_se="$(print '\e[0m')"
export LESS_TERMCAP_so="$(print '\e[01;44;33m')"
export LESS_TERMCAP_ue="$(print '\e[0m')"
export LESS_TERMCAP_us="$(print '\e[01;32m')"

export JAVA_HOME=/usr
export KEYTIMEOUT=1

alias c='clear'
alias grep='grep --colour'
alias grepcpp='grep --binary-files=text `find | egrep "\.(cpp|hpp|h|c|asm)$"` -e '
alias l='ls -lhp --color=auto'
alias ll='ls -lp --color=auto'
alias ls='ls -F --color=auto'
alias lss='/bin/ls'
alias mkgmap='mkgmap --route --net --charset=windows-1251'
alias mplayer='mplayer -stop-xscreensaver '
alias nmap-scan='nmap -sP -n'
alias rec='arecord -t wav `date +%d%m%Y_%H-%M`.wav -c 2 -r 8000'
alias reload='. ~/.zshrc'
alias rubber='rubber -d'
alias webshare='python -c "import SimpleHTTPServer;SimpleHTTPServer.test()"'
alias ggrep='git grep'
alias sl='sl -le'
