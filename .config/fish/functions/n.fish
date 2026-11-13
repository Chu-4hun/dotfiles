
function n --wraps nnn --description 'nnn file manager with cd on quit'
    # Prevent nested nnn instances
    if test -n "$NNNLVL" -a "$NNNLVL" -ge 1
        echo "nnn is already running"
        return
    end

    # Enable cd on quit
    if test -n "$XDG_CONFIG_HOME"
        set -x NNN_TMPFILE "$XDG_CONFIG_HOME/nnn/.lastd"
    else
        set -x NNN_TMPFILE "$HOME/.config/nnn/.lastd"
    end

    command nnn $argv

    # Change directory after exiting nnn
    if test -e "$NNN_TMPFILE"
        source "$NNN_TMPFILE"
        rm -- "$NNN_TMPFILE"
    end
end
