if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -x ZSH "$HOME/.oh-my-zsh"
set -x PYENV_ROOT "$HOME/.pyenv"
set -x JAVA_HOME "/usr/lib/jvm/java-24-openjdk"
set -x RUSTFLAGS "-Cinstrument-coverage"
set -x LLVM_PROFILE_FILE "coverage.profraw"
set -x EDITOR "nvim"
set -x PATH "$PYENV_ROOT/bin:$PATH"
set -x PATH "$HOME/.tmuxifier/bin:$PATH"
set -x PATH "$HOME/.local/bin:$PATH"

alias sus="systemctl suspend"
alias pwroff="systemctl poweroff"

function find-pkg
  yay -Q | grep "$argv"
end

abbr --add list-pkg yay -Qqe
