# Gentoo 
alias emerge-sync="eix-sync"
alias emerge-update="emerge -avuND @world"
alias emerge-install="emerge -av"
alias emerge-oneshot="emerge -1av"
alias emerge-autounmask="emerge -av --autounmask=y --autounmask-unrestricted-atoms --autounmask-use=y --autounmask-license=y"
alias emerge-newuse="emerge -avND @world"
alias emerge-changeuse="emerge -avUD @world"
alias emerge-depclean="emerge -ac"
alias emerge-system="emerge -ave @system"
alias emerge-world="emerge -ave @world"
alias emerge-smart="emerge @smart-live-rebuild"
alias emerge-noreplace="emerge --noreplace"
alias emerge-deselect="emerge --deselect"
alias eix-cache="eix-update && eix-remote update"

# The Rest
alias grub-update="grub-mkconfig -o /boot/grub/grub.cfg"
alias l="exa -alh --color=always --group-directories-first"
alias b="bat -p"
alias c="clear"
alias watch-sensors="watch -n 1 sensors"
alias watch-genlop="watch -cn 3 genlop -ci"
