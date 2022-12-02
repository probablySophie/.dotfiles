
# TODO: make config_dir variable so each import can be config dir + "alias.sh"

source "$HOME/.config/bash/alias.sh"

source "$HOME/.config/bash/colours.sh"

export PATH=~/.local/bin:$PATH


# Nix

# source $HOME/.nix-profile/etc/profile.d/nix.sh


# Nix Package Manager

if [ -f $HOME/.nix-profile/etc/profile.d/nix.sh ]; then
    . $HOME/.nix-profile/etc/profile.d/nix.sh
fi


# Starship

eval "$(starship init bash)"


## TODO:
#		Autoset font here?
#		Starship prompt
#		Option to open terminal in different shell?


. $HOME/.config/bash/welcome.sh
