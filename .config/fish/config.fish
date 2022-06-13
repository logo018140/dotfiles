if status is-interactive
    # Commands to run in interactive sessions can go here
    fish_add_path -p ~/bin
    zoxide init fish | source
    cat ~/.cache/wal/sequences &
    set -gx  GPG_TTY (tty)
end
