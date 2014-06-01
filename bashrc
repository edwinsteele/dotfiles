
# Start ssh-agent if it is not already running and set up ssh-agent variables
if [ "x" == "x`ps -x -u ${USER} | egrep [s]sh-agent`" ] ; then 
  # no ssh-agent running"
  ssh-agent | sed -e "/^echo/d" > ${HOME}/bin/agent-env
fi
source ${HOME}/bin/agent-env

if [ -f `brew --prefix`/etc/bash_completion ]; then
	. `brew --prefix`/etc/bash_completion
fi

PATH="/usr/local/bin:/usr/local/sbin:${PATH}"
export PATH

source /Users/esteele/.virtualenvs/venv_profile_additions_2.7.sh

pjson () {
        python -c "import json; import sys; print json.dumps(json.loads(sys.stdin.read()), sort_keys = True, indent = 2)"
}

alias muttman="elinks /usr/local/opt/mutt/share/doc/mutt/manual.html"

export LANG=en_AU.UTF-8
# Use vim enhanced
alias vi=vim

source ~/.profile_private
