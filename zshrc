
export PATH="${HOME}/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/local/share/dotnet"

rhighlight() { gsed 's,\('$1'\),\x1B[41m\1\x1B[0m,' }
ghighlight() { gsed 's,\('$1'\),\x1B[42m\1\x1B[0m,' }
yhighlight() { gsed 's,\('$1'\),\x1B[43m\1\x1B[0m,' }

export LANG=en_AU.UTF-8

source ~/.profile_private

# Stuff from oh-my-zsh below here
# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="edwin"

# Uncomment this to disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(virtualenv autoswitch_virtualenv)

source $ZSH/oh-my-zsh.sh

# Oh dear, why wasn't allowing comments set to be the default?
setopt interactivecomments

# added by travis gem
[ -f /Users/esteele/.travis/travis.sh ] && source /Users/esteele/.travis/travis.sh
export PATH="/usr/local/opt/postgresql@9.6/bin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="/usr/local/opt/python@3.8/bin:$PATH"
export PATH="/usr/local/opt/mysql-client/bin:$PATH"
