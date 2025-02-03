#!/bin/zsh

# Source the .zsh_profile to ensure the aliases are available
source ~/.zprofile

brew update

brew upgrade

curl -d "Apps Updated/Upgrades" https://ntfy.thenettework.com/brew

exit 0