export BAT_THEME="Catppuccin Mocha"
export EDITOR="micro"
export MICRO_TRUECOLOR=1

##   Flatpak
alias fpi="flatpak install"
alias fpd="flatpak uninstall --delete-data"
alias fpl="flatpak list"
alias fpm="flatpak mask"
alias fpo="flatpak uninstall --unused"
alias fps="flatpak search"
alias fpu="flatpak update"

##   Système
alias fw="sudo nft list ruleset"
alias ls="eza --icons -1 --group-directories-first"
alias rm="trash -v"
alias svl="ls /var/service"
alias xcr="xcheckrestart"

##   Utilitaires
alias c="clear"
alias cdt="cd $HOME/Téléchargements"
alias conf="yazi $HOME/.config"
alias ff="fastfetch"
alias fm="yazi"
alias vmon="$HOME/.scripts/libvirt-activation"
alias vmoff="$HOME/.scripts/libvirt-desactivation"
alias window="mmsg get all-clients | jq ."
alias wipe="cliphist wipe && rm -r $HOME/.cache/cliphist/db"
alias zshrc="micro $HOME/.zshrc && source $HOME/.zshrc"

##   XBPS
alias add="sudo xbps-install -Sy"
alias clean="sudo xbps-remove -oO && sudo vkpurge rm all"
alias del="sudo xbps-remove -R"
alias info="xbps-query -R"
alias list="xbps-query -m > $HOME/Infos/list"
alias mun="xbps-install -Mun"
alias search="xbps-query -Rs"
alias update="sudo xbps-install -Syu"

## History file for zsh
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

bindkey '^[[3~' delete-char
  
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh   

eval "$(starship init zsh)"
