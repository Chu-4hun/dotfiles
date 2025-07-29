if status is-interactive
    # Commands to run in interactive sessions can go here
    set PATH $HOME/.cargo/bin $PATH
end

set fish_greeting

if command -v apt-get >/dev/null
    alias upd="sudo apt-get update && sudo apt-get upgrade -y && flatpak update -y"
end

if command -v dnf >/dev/null
    alias upd="sudo dnf update -y && flatpak update -y"
end

if command -v pacman >/dev/null
    function upd
        sudo pacman -Syu --noconfirm
        yay -Syu --noconfirm
        flatpak update -y
        echo "----CACHE CLEARING-------"
        sudo paccache -r
        sudo pacman -Qtdq
    end
end
