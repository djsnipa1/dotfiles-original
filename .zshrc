#!/home/chad/.zshrc
#
#     \  |  _ \__ __| __ \
#    |\/ | |   |  |   |   |
#    |   | |   |  |   |   |
#   _|  _|\___/  _|  ____/
#   

# git log -1 | cowsay -f dragon-and-cow | lolcat

cat ~/motd.txt | lolcat 

export SPOTIPY_CLIENT_ID='47037c98ac8749cf96ff579bc46764fc'
export SPOTIPY_CLIENT_SECRET='3f2566974ea84c0db0acfec9e2818316'

#	  _  ____   _  _____ _   _
# 	 | ||  _ \ / \|_   _| | | |
# 	/ __) |_) / _ \ | | | |_| |
# 	\__ \  __/ ___ \| | |  _  |
# 	(   /_| /_/   \_\_| |_| |_|
# 	 |_|
# 
export PATH=/home/linuxbrew/.linuxbrew/bin:$PATH
export PATH=/home/chad/.local/bin:$PATH 
# export PATH=/home/bin:$PATH 
export PATH=$HOME/bin:$PATH
export PATH=$HOME/.npm-packages/bin:$PATH 


#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
# Added this for poetry zsh completion
fpath+=~/.zfunc

unsetopt CORRECT                      # Disable autocorrect guesses. Happens when typing a wrong
                                      # command that may look like an existing one.

expand-or-complete-with-dots() {      # This bunch of code displays red dots when autocompleting
  echo -n "\e[31m......\e[0m"         # a command with the tab key, "Oh-my-zsh"-style.
  zle expand-or-complete
  zle redisplay
}
zle -N expand-or-complete-with-dots
bindkey "^I" expand-or-complete-with-dots

# Functions & Aliases in ~/.aliases FILE
if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

# Loads .functions file 
if [ -f ~/.functions ]; then
    . ~/.functions 
fi


# DOES SOMETHING FOR FZF
#[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# SETTING LYNX AS DEFAULT BROWSER
# export BROWSER=lynx
export EDITOR=nvim

export TERM="xterm"

# FOR MOBAXTERM
export DISPLAY=:0

#ZSH_AUTOSUGGEST_IGNORE_WIDGETS+=(expand-or-complete)
#ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#ff00ff,bg=cyan,bold,underline"

# ADDS SOMETHING FOR THEFUCK 
eval $(thefuck --alias) 


pyfiglet -f chunky "Chad" --width=120 --justify=right | lolcat
pyfiglet -f chunky "is Awesome!" --width=120 --justify=right | lolcat

OUTPUT="Chad is \n $(pyfiglet Chad)"


MULTILINE="$(ls \
   -1)"

#   __          _
#  (_ |_  _ || /  _ ._ _ ._ | __|_o _ ._
#  __)| |(/_|| \_(_)| | ||_)|(/_|_|(_)| |
#                        |

# ________   ____  ____
# | || |||   || \\ || \\
#   ||  ||   ||  ))||_//
#   ||  ||__|||_// || \\
# 

# complete -W "$(tldr 2>/dev/null --list)" tldr 

export TLDR_COLOR_BLANK="white"
export TLDR_COLOR_NAME="cyan"
export TLDR_COLOR_DESCRIPTION="white"
export TLDR_COLOR_EXAMPLE="green"
export TLDR_COLOR_COMMAND="red"
export TLDR_COLOR_PARAMETER="white"
export TLDR_CACHE_ENABLED=1
export TLDR_CACHE_MAX_AGE=720

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh 

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"
# TO CHANGE DIRECTORY WHEN LAUNCHING
cd ~

# marker.sh keybindings
# export MARKER_KEY_MARK='\C-k'
# export MARKER_KEY_NEXT_PLACEHOLDER='\C-4'
# source marker.sh
[[ -s "$HOME/.local/share/marker/marker.sh" ]] && source "$HOME/.local/share/marker/marker.sh"


# ADDED FOR s-search (installed via brew) AUTO COMPLETE
if [ -f /home/chad/.config/autocomplete/s-completion.bash ]; then
    . /home/chad/.config/autocomplete/s-completion.bash 
fi
