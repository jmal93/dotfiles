alias config-alias="nvim ~/.oh-my-zsh/custom/aliases.zsh"
alias config-hypr="nvim ~/.config/hypr"
alias config-nvim="nvim ~/.config/nvim"
alias config-waybar="cd ~/.config/waybar; nvim"
alias config-zshrc="nvim ~/.zshrc"

alias puc="cd ~/PUC"
alias pwroff="systemctl poweroff"
alias sus="systemctl suspend"

find_pkg() {
  yay -Q | grep "$1"
}
