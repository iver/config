# --
# (c) Iver!
# Iván Jaimes <ivan.iver@gmail.com>
#
# This is a setup profile enviroment file for unix-like systems.
# See bash_rc or bash_profile for more information.

source ~/.dotfiles/git/git-prompt.sh
. ~/.dotfiles/git/git-completion.bash

. ~/.dotfiles/bash/env
. ~/.dotfiles/bash/alias
. ~/.dotfiles/bash/paths
# Uncomment this line if you want to load ssh-id 
# . ~/.dotfiles/bash/ssh_config

[ -z "$SP1" ] && return