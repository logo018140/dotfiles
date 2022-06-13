#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
export PATH=$PATH:~/bin
export GPG_TTY=$(tty)
if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    ssh-agent -t 1h > "$XDG_RUNTIME_DIR/ssh-agent.env"
fi
if [[ ! "$SSH_AUTH_SOCK" ]]; then
    source "$XDG_RUNTIME_DIR/ssh-agent.env" >/dev/null
fi

if [[ $(ps --no-header --pid=$PPID --format=comm) != "fish" && -z ${BASH_EXECUTION_STRING} ]]
then
        exec fish
fi
alias music="ncmpcpp"
alias wget=wget --hsts-file="$XDG_DATA_HOME/wget-hsts"
alias ls="exa -lhg --group-directories-first"
(cat ~/.cache/wal/sequences && clear &)
PS1='[\u@\h \W]\$ '
