# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export PATH=$PATH:$(go env GOPATH)/bin
export PATH=$PATH:/home/user/.cargo/bin
export PATH=$PATH:/home/user/zls/bin
export PATH=$PATH:/home/user/.local/bin
export PATH=$PATH:/home/user/.yarn/bin

export MOZ_ENABLE_WAYLAND=1

zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
autoload -Uz compinit && compinit

PROG=croc
_CLI_ZSH_AUTOCOMPLETE_HACK=1
source /etc/zsh/zsh_autocomplete_croc

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

 export PATH=/home/user/.nimble/bin:$PATH

 export GOPATH=$HOME/go

 eval "$(zoxide init zsh)"

 alias cd="z"

bindkey -v
export KEYTIMEOUT=1

alias '?'="/home/user/.w3m/duck"

unset TMUX
