if ! (( $+commands[rustup] && $+commands[cargo] )); then
  return
fi

# Add completions folder in $ZSH_CACHE_DIR
# TODO: 2021-12-28: remove this bit of code as it exists in oh-my-zsh.sh
command mkdir -p "$ZSH_CACHE_DIR/completions"
(( ${fpath[(Ie)"$ZSH_CACHE_DIR/completions"]} )) || fpath=("$ZSH_CACHE_DIR/completions" $fpath)

# If the completion file doesn't exist yet, we need to autoload it and
# bind it to `cargo`. Otherwise, compinit will have already done that
if [[ ! -f "$ZSH_CACHE_DIR/completions/_cargo" ]]; then
  autoload -Uz _cargo
  declare -A _comps
  _comps[cargo]=_cargo
fi

# If the completion file doesn't exist yet, we need to autoload it and
# bind it to `rustup`. Otherwise, compinit will have already done that
if [[ ! -f "$ZSH_CACHE_DIR/completions/_rustup" ]]; then
  autoload -Uz _rustup
  declare -A _comps
  _comps[rustup]=_rustup
fi

# Generate completion files in the background
rustup completions zsh >| "$ZSH_CACHE_DIR/completions/_rustup" &|
rustup completions zsh cargo >| "$ZSH_CACHE_DIR/completions/_cargo" &|
