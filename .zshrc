### ALIASES ###

# Some lazy aliases.
alias vim="nvim"
alias hx="helix"
alias S="source"

alias free="free -hwt"
alias df="df -H"

### EDITOR ###
export EDITOR="vim"
# Preferred editor for local and remote sessions.
if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR="hx"
else
   export EDITOR="vim"
fi

# Yet another Yogurt (yay) aliases.
alias yaya="yay -S --noconfirm"
# Clean unneeded dependencies.
alias cleanup="yay -YScc"

# Colorize common apps.
alias pacman="sudo pacman --color=auto"
alias diff="diff --color=auto"
alias ip="ip -color=always"

# Colorize grep output.
alias grep="grep --color=auto"
alias egrep="egrep --color=auto"
alias fgrep="fgrep --color=auto"

# Networking
alias ipm="ip a | sed -r 's/\x1B\[[0-9;]*[mK]//g' | rg 'inet ' | awk '{print \$2}' | column -t"
alias server="python -m http.server 8888"
# Checking Public IPv4
alias myip="curl https://ipecho.net/plain; echo"

# Weather Check Command.
alias weather="curl -s 'wttr.in/{Bangkok,Surin,Khon_Kaen}?format=3'"
alias forecast="curl wttr.in/Surin"
alias weather2="curl v2.wttr.in/Surin"
alias moon="echo 'Moon Phase: $(curl -s 'wttr.in/Moon?format=%m') '"

# Catch up
alias getnews="curl getnews.tech"
alias rate="curl rate.sx"

# Cheatsheet
cht() { curl -s "cht.sh/$1" | bat }

# Confirm before overwriting something.
alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"

# Aliases general use for ls
alias ls="eza --grid --color=auto --icons --git --sort=type"
alias ll="eza --all --long --color=auto --icons --git --sort=type"
alias la="eza -la --grid --time-style=long-iso --git --color-scale --sort=type"
alias l1="eza -1 --sort=type" 
alias tree="eza --tree --level=2 --color=auto --icons"

# ps
alias psa="ps auxf"
alias psgrep="ps aux | grep -v grep | grep -i -e VSZ -e"
alias psmem="ps aux | (head -n 1 && sort -nrk4 | head -n 10)"

# Termbin
# Usage:
# echo just testing!  | nc termbin.com 9999
# cat ~/some_file.txt | nc termbin.com 9999
alias tb="nc termbin.com 9999"

# SSH
alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"

# Kitty Terminal
alias icat="kitty +kitten icat"
alias theme="kitty +kitten themes"
alias ssh="kitty +kitten ssh"
alias font="kitty +list-fonts"

# Get Error Messages from journalctl
alias jctl="journalctl -p 3 -xb"

# Switch Between Shells
# I do not recommend switching default SHELL from bash.
alias tobash="sudo chsh $USER -s /bin/bash && echo 'Now log out.'"
alias tozsh="sudo chsh $USER -s /bin/zsh && echo 'Now log out.'"
alias tofish="sudo chsh $USER -s /bin/fish && echo 'Now log out.'"

# macOS checking.
alias maccheck="sw_vers"
alias macview="system_profiler SPSoftwareDataType"

### SETTING THE STARSHIP PROMPT ###
eval "$(starship init zsh)"

### SETTING THE FUCK PROMPT ###
eval $(thefuck --alias)

# ZSH config
alias zshconfig="hx ~/.zshrc"
source ~/.zsh/fsh/fast-syntax-highlighting.plugin.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-autocomplete/zsh-autocomplete.plugin.zsh