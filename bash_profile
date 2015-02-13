# --
# (c) Iver!
# Iván Jaimes <ivan.iver@gmail.com>
#
# This is a setup profile enviroment file for unix-like systems.
# See bash_rc or bash_profile for more information.

. ~/Config/bash/env
. ~/Config/bash/alias

. ~/Config/git/git-completion.bash
source ~/Config/git/git-prompt.sh
. ~/Config/bash/paths

# Uncomment this line if you want to load ssh-id
# . ~/Config/bash/load_keys.sh

# [ -z "$SP1" ] && return

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
