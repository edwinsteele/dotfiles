# Make sure ${HOME}/bin exists
test -d ${HOME}/bin || mkdir ${HOME}/bin

# Start ssh-agent if it is not already running and set up ssh-agent variables
# use "ps x -u" instead of "ps -x -u" so that it works in BSD and Linux 
if [ "x" == "x`ps x -u ${USER} | egrep [s]sh-agent`" ] ; then 
  # no ssh-agent running"
  ssh-agent | sed -e "/^echo/d" > ${HOME}/bin/agent-env
fi
source ${HOME}/bin/agent-env

brew_prefix=$(brew --prefix 2> /dev/null);
if [ -f ${brew_prefix}/etc/bash_completion ]; then
	. ${brew_prefix}/etc/bash_completion
fi

PATH="/usr/local/bin:/usr/local/sbin:${PATH}"
export PATH

if [ -f /Users/esteele/.virtualenvs/venv_profile_additions_2.7.sh ]; then
	source /Users/esteele/.virtualenvs/venv_profile_additions_2.7.sh
fi

pjson () {
        python -c "import json; import sys; print json.dumps(json.loads(sys.stdin.read()), sort_keys = True, indent = 2)"
}

alias muttman="elinks /usr/local/opt/mutt/share/doc/mutt/manual.html"

export LANG=en_AU.UTF-8
# Use vim enhanced
alias vi=vim

source ~/.profile_private
