# Use bash-completion@2 brew package for bash auto-completion (mandatory if bash installed from brew)
#[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"

# BASH prompt handled by starship.rs
# PS1='\[\033[01;32m\]\u\[\033[00m\]@\[\033[01;32m\]\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '


# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

export XDG_CONFIG_HOME="$HOME/.config"
export EDITOR='/opt/homebrew/bin/nvim'

# Aliases
alias dotfiles='cd ~/dotfiles'
export LS_OPTIONS='--color=auto -h'
eval "$(dircolors)"
alias ls='ls $LS_OPTIONS'
alias ll='ls $LS_OPTIONS -l'
alias lla='ls $LS_OPTIONS -lA'


#alias powershell='/usr/local/microsoft/powershell/7/pwsh' # necessary for powershell implementation on MacOS with brew
#alias git='/opt/homebrew/bin/git' # bypass native MacOS git with brew one

eval "$(starship init bash)"

# Exe
neofetch
