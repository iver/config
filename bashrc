# Iván Jaimes <ivan.iver@gmail.com>
# File: bashrc
# You need to add an extra script: ssh_key_add.rb
# --
# (c) Iver!
#  
# This will start up ssh-agent for each Cygwin shell you have open.
# See bash_rc or bash_profile for more information.

SSHAGENT=/usr/bin/ssh-agent
SSHAGENTARGS="-s"
if [ -z "$SSH_AUTH_SOCK" -a -x "$SSHAGENT" ]; then
	eval `$SSHAGENT $SSHAGENTARGS`
	trap "kill $SSH_AGENT_PID" 0
fi
SCRIPT="$HOME/.ssh/ssh_key_add.rb"

RUBY_CMD='ruby'

if [ ! `command -v ${RUBY_CMD} | wc -l` -gt 0 ]
then
	fail "new ${GENRC} not created, as ${RUBY_CMD} command not found"
else
	"${RUBY_CMD}" "${SCRIPT}" 
fi