# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi


# Put your fun stuff here.

# Emerge Aliases
alias sync="emaint -a sync"
alias full-update="emerge --ask --verbose --update --deep --with-bdeps=y --newuse @world"
alias clean="emerge --ask --depclean"

# Grub Aliases
alias update-grub="grub-mkconfig -o /boot/grub/grub.cfg"

# Terminal Rick Roll
alias rr='curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash'

# Change "ls" to "exa" 
alias ls='exa -alh --color=always --group-directories-first'

# Change "cat" to "bat"
alias cat="bat"

# Set VDPAU Driver
export VDPAU_DRIVER=radeonsi

# CCACHE Config
# export PATH="/usr/lib/ccache/bin${PATH:+:}$PATH"
# export CCACHE_DIR="/var/cache/ccache"

# Increase Bash History Size
export HISTSIZE=10000
export HISTFILESIZE=10000

# Starship shell prompt Config
eval "$(starship init bash)"

# Release colors
colorscript -r
