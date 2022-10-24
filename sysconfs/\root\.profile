# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi
set LC_COLLATE=C
export EDITOR=vim

# TERMCAP COLORS
# 31 red
# 32 bold green 
# 33 yellow
# 37 bold white
export LESS_TERMCAP_mb=$'\e[1;31m' # blink 
export LESS_TERMCAP_md=$'\e[1;32m' # bold 
export LESS_TERMCAP_me=$'\e[0m' # end all 
export LESS_TERMCAP_se=$'\e[0m' # end standout
export LESS_TERMCAP_so=$'\e[01;33m' # standout
export LESS_TERMCAP_ue=$'\e[0m' # end underline
export LESS_TERMCAP_us=$'\e[1;4;31m' # underline


