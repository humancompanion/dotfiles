# Path to your oh-my-zsh installation.
export ZSH=/Users/$(whoami)/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="zhann"

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
plugins=(autojump brew common-aliases git git-flow npm osx ruby rbenv ssh-agent sublime zsh-syntax-highlighting)

# ------------------------------------------------------------------
# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/local/share/npm/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ------------------------------------------------------------------
# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id_usds"

# ------------------------------------------------------------------
# env
export EMAIL="Matthew Dingee <matthew.j.dingee@omb.eop.gov>"
# export EDITOR="/usr/local/bin/subl -n -w"
export PAGER=less
export LESS='-x4'
umask 022

# ------------------------------------------------------------------
# autojump
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

# ------------------------------------------------------------------
# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init - zsh)"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# ------------------------------------------------------------------
# NODE
export NODE_PATH=/usr/local/lib/node_modules:/usr/local/share/node_modules
export JS_CMD=node

# ------------------------------------------------------------------
# Java - bleh
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias la="ls -la"
alias lr="ls -larth"
alias which="which -p"
alias cd='cd '
alias chrome="open -a 'Google Chrome' --args --allow-file-access-from-files"


setopt INTERACTIVE_COMMENTS
setopt rmstarsilent

# added by travis gem
[ -f /Users/matthew/.travis/travis.sh ] && source /Users/matthew/.travis/travis.sh

 export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
# source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zs#h
