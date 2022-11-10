# Big bois
alias emerge-system="emerge --ask --verbose --emptytree --usepkg=n @system"
alias emerge-world="emerge --ask --verbose --emptytree --usepkg=n @world"

# Gentoo 
alias emerge-sync="eix-sync"
alias emerge-update="emerge --ask --verbose --update --newuse --deep @world"
alias emerge-install="emerge --ask --verbose"
alias emerge-oneshot="emerge --ask --verbose --oneshot"
alias emerge-autounmask="emerge --ask --verbose --autounmask=y --autounmask-unrestricted-atoms --autounmask-use=y --autounmask-license=y"
alias emerge-newuse="emerge --ask --verbose --newuse --deep @world"
alias emerge-changeuse="emerge --ask --verbose --changed-use --deep @world"
alias emerge-depclean="emerge --ask --depclean"
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