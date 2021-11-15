 
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

# Emerge aliases
alias emerge-autounmask="emerge --ask --verbose --autounmask --autounmask-unrestricted-atoms"
alias full-update="emerge --ask --verbose --update --deep --newuse --with-bdeps=y @world"
alias full-update-noask="emerge --verbose --update --deep --newuse --with-bdeps=y @world"
alias full-update-autounmask="emerge --ask --verbose --update --deep --newuse --with-bdeps=y --autounmask --autounmask-unrestricted-atoms @world"
alias clean="emerge --depclean --ask"
alias search="emerge --search"
alias mod="emerge @module-rebuild"
alias unmerge="CONFIG_PROTECT="-*" emerge -av --unmerge"

# Others
alias grub-update="grub-mkconfig -o /boot/grub/grub.cfg"
alias ls="exa -alh --color=always --group-directories-first"
alias wine32="WINEPREFIX="$HOME/.wine32" wine"
alias glances="glances --enable-plugin sensors"
alias rr="curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash"
alias reboot="doas reboot"
alias poweroff="doas poweroff"

# Set VDPAU Driver
export VDPAU_DRIVER=radeonsi

# Bash History
export HISTSIZE=10000
export HISTFILESIZE=10000

# Starship shell prompt config
eval "$(starship init bash)"

# Release colors
colorscript -r
