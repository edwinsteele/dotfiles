
unalias run-help
autoload run-help
HELPDIR=/usr/local/share/zsh/helpfiles

# Start ssh-agent if it is not already running and set up ssh-agent variables
if [ "x" = "x`ps -x -u ${USER} | egrep '[s]sh-agent'`" ] ; then 
  # no ssh-agent running"
  ssh-agent | sed -e "/^echo/d" > ${HOME}/bin/agent-env
fi
source ${HOME}/bin/agent-env

export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin"
export PATH="/Applications/Postgres.app/Contents/Versions/9.4/bin:$PATH"
# Put at the end of the path so we don't find "python" or other standard stuff
export PATH="$PATH:/Users/esteele/.virtualenvs/standard-shell/bin/"

source /Users/esteele/.virtualenvs/venv_profile_additions_2.7.sh

pjson () {
        python -c "import json; import sys; print json.dumps(json.loads(sys.stdin.read()), sort_keys = True, indent = 2)"
}

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
