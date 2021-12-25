# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

autoload -Uz compinit
compinit

plugins=(git archlinux zsh-syntax-highlighting zsh-autosuggestions)
source ~/.oh-my-zsh/oh-my-zsh.sh

alias ytp="youtube-viewer  --no-video-info --player=mpv"
alias open="xdg-open &"

export EDITOR=vim
export VISUAL=vim
export TERMINAL="kitty"
export BROWSER=google-chrome-stable
export browser=google-chrome-stable
