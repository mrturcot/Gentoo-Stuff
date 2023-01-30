# root
alias root="sudo su -"

# ssh
alias pihole="ssh root@192.168.1.104"

# WINE
alias wine32="WINEPREFIX='$HOME/.wine32'"

# The Rest
alias rr="curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash"
alias reboot="sudo /sbin/reboot"
alias shutdown="sudo /sbin/shutdown -h now"
alias l="exa -l -a -bh --color=always --color-scale --group-directories-first --time-style=long-iso --git --extended"
alias b="bat -p"
alias c="clear"
alias e="exit"
alias watch-sensors="watch -n 1 sensors"
alias watch-genlop="watch -cn 1 genlop -ci"
alias htop-su="sudo -s htop"
alias wav2flac="for file in *.wav; do ffmpeg -i "$file" -c:a flac "${file%.*}.flac"; done"
