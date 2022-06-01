 
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
alias full-update="emerge --ask --verbose --update --deep --newuse @world"
alias full-update-autounmask="emerge --ask --verbose --update --deep --newuse --autounmask --autounmask-unrestricted-atoms @world"
alias clean="emerge --depclean --ask"
alias unmerge="CONFIG_PROTECT="-*" emerge -av --unmerge"

# Others
alias grub-update="grub-mkconfig -o /boot/grub/grub.cfg"
alias ls="exa -alh --color=always --group-directories-first"
alias wine32="WINEPREFIX="$HOME/.wine32" wine"
alias glances="glances --enable-plugin sensors"
alias rr="curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash"
alias reboot="doas reboot"
alias poweroff="doas poweroff"
alias mc-server="/usr/lib64/openjdk-17/bin/java -Xms8G -Xmx8G -Xmn1G -XX:+UseG1GC -XX:ParallelGCThreads=8 -XX:ConcGCThreads=2 -jar /home/mrturcot/mc-server/PaperMC/paper-1.18.2-351.jar --nogui"
alias java17="/usr/lib64/openjdk-17/bin/java"

export VDPAU_DRIVER=radeonsi
export HISTSIZE=10000
export HISTFILESIZE=10000
export EDITOR='/usr/bin/vim'

# Starship shell prompt config
eval "$(starship init bash)"

# Release colors
colorscript -r
