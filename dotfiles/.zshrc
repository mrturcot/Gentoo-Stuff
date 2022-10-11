## Enabling Portage completions and Gentoo prompt for zsh
autoload -U compinit promptinit
compinit
promptinit; prompt gentoo

## Enabling cache for the completions for zsh
zstyle ':completion::complete:*' use-cache 1

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/bin:/usr/lib/llvm/14/bin:/home/mrturcot/.local/bin

# Path to your oh-my-zsh installation.
ZSH_DISABLE_COMPFIX="true"
export ZSH=/home/mrturcot/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  bundler
  git
  sudo
  thefuck
  zsh-autosuggestions
  zsh-completions
  zsh-histdb
  zsh-history-substring-search
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"
export SHELL=/bin/zsh
export EDITOR=/usr/bin/vim
export USB_DEVFS_PATH=/dev/bus/usb
#export XDG_DATA_HOME=${XDG_DATA_HOME:-"${HOME}/.local/share"}
export VDPAU_DRIVER=radeonsi
export ANDROID_HOME="/home/mrturcot/Android/Sdk"
export REPO_OS_OVERRIDE=linux

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vi'
fi

# Compilation flags
#export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Emerge aliases
alias emerge-autounmask="emerge --ask --verbose --autounmask --autounmask-unrestricted-atoms"
alias full-update="emerge --ask --verbose --update --deep --newuse @world"
alias full-update-autounmask="emerge --ask --verbose --update --deep --newuse --autounmask --autounmask-unrestricted-atoms @world"
alias clean="emerge --depclean --ask"
alias uninstall="emerge --ask --verbose --depclean"

# Others
alias grub-update="grub-mkconfig -o /boot/grub/grub.cfg"
alias l="exa -alhg --color=always --group-directories-first"
alias wine32="WINEPREFIX="$HOME/.wine32" wine"
alias glances="glances --enable-plugin sensors"
alias rr="curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash"
alias mpv-complete="/home/mrturcot/scripts/./mpv-complete.sh"
alias mpv-update="/home/mrturcot/scripts/./mpv-update.sh"
alias ffmpeg-update="/home/mrturcot/scripts/./ffmpeg-update.sh"
alias mlt-update="/home/mrturcot/scripts/./mlt-update.sh"
alias placebo-update="/home/mrturcot/scripts/./placebo-update.sh"
alias auto-kernel="/root/stuff/./autokernel.sh"
alias mpv-android="/home/mrturcot/scripts/mpv-android-update.sh"
alias vkquake="vkquake -basedir /mnt/hdd2/Games/vkquake"
alias vkquake2="/home/mrturcot/scripts/./vkquake2.sh"
alias vkquake-update="/home/mrturcot/scripts/./vkquake-update.sh"
alias vkquake2-update="/home/mrturcot/scripts/./vkquake2-update.sh"
alias gzdoom-update="/home/mrturcot/scripts/./gzdoom-update.sh"
alias mplayer-update="/home/mrturcot/scripts/./mplayer-update.sh"
alias kden-update="~/scripts/./kden-update.sh"
alias kde-logout="qdbus org.kde.ksmserver /KSMServer logout 1 3 3"
alias gzdoom-git="~/github/gzdoom/build/./gzdoom"

setopt NO_EQUALS

# Release colors
colorscript -r

# Starship
eval "$(starship init zsh)"

# zsh-syntax-highlighting
source /usr/share/zsh/site-contrib/oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
