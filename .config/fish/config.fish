if status is-interactive
    # Commands to run in interactive sessions can go here
    set PATH $HOME/.cargo/bin $PATH
end


if which apt-get >/dev/null
	alias upd="sudo apt-get update && sudo apt-get upgrade -y && flatpak update -y"
end

if which dnf >/dev/null
	alias upd="sudo dnf update -y && flatpak update -y"
end

