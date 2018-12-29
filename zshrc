
# Start ssh-agent if it is not already running and set up ssh-agent variables
if [ -z "$(pgrep ssh-agent)" ] ; then
  echo "Starting SSH agent"
  # no ssh-agent running"
  ssh-agent -s > ${HOME}/bin/agent-env
fi
source ${HOME}/bin/agent-env

export PATH="${HOME}/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin"
# pip3 install --user goes here on OSX
export PATH="${PATH}:${HOME}/Library/Python/3.7/bin"

rhighlight() { gsed 's,\('$1'\),\x1B[41m\1\x1B[0m,' }
ghighlight() { gsed 's,\('$1'\),\x1B[42m\1\x1B[0m,' }
yhighlight() { gsed 's,\('$1'\),\x1B[43m\1\x1B[0m,' }

export VAGRANT_DEFAULT_PROVIDER=vmware_fusion

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

plugins=(virtualenv virtualenvwrapper)

source $ZSH/oh-my-zsh.sh

# Oh dear, why wasn't allowing comments set to be the default?
setopt interactivecomments
