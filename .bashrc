export EDITOR='vim'
export VISUAL='vim'
#export HISTCONTROL=ignoreboth:erasedups
#export PAGER='most'


alias v="nvim"
alias r="ranger"
alias enable-boost='sudo bash -c "echo 1 > /sys/devices/system/cpu/cpufreq/boost"'
alias disable-boost='sudo bash -c "echo 0 > /sys/devices/system/cpu/cpufreq/boost"'
alias perfmode='sudo cpupower frequency-set --governor performance'
alias consmode='sudo cpupower frequency-set --governor conservative'
alias set-governor='sudo cpupower frequency-set --governor '
alias boost='cat /sys/devices/system/cpu/cpufreq/boost'
alias governor='cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor'
alias tellico='ssh bbogale@tellico.icl.utk.edu'
alias bashrc='nvim ~/.bashrc'
alias tellico-mnt='sshfs tellico:/home/bbogale ~/mount_point'
alias tellico-unmount='fusermount -uz ~/mount_point'

tellico-code() {
  sshfs tellico:/home/bbogale/"$1" ~/mount_point && code ~/mount_point && exit
}

get-uni() {
	echo -ne "\u"$1 | xclip -selection clipboard;
}

set -o vi
bind -m vi-command 'Control-l: clear-screen'
bind -m vi-insert 'Control-l: clear-screen'

# source ~/home_env/bin/activate  # commented out by conda initialize
#eval "$(starship init bash)"
if [[ "$TERM" == "xterm-kitty" ]]; then
  eval "$(starship init bash)"
fi


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/home/yejashi/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "/home/yejashi/miniconda3/etc/profile.d/conda.sh" ]; then
#         . "/home/yejashi/miniconda3/etc/profile.d/conda.sh"
#     else
#         export PATH="/home/yejashi/miniconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# <<< conda initialize <<<

