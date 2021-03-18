#!/usr/bin/env bash

## Graphics :: https://patorjk.com/software/taag/#p=display&c=echo&f=Rectangles&t=Hello%20World

## Prerequisites:
## homebrew :: https://brew.sh/
## homebrew brew-cask-upgrade :: https://github.com/buo/homebrew-cask-upgrade/
## homebrew mas :: https://github.com/mas-cli/mas/
## ClamAV :: brew install clamav

clear

echo " "
echo "  _____       _     _   _            _____ _           _____ _____  "
echo " |  |  |___ _| |___| |_|_|___ ___   |     | |___ _____|  _  |  |  | "
echo " |  |  | . | . | .'|  _| |   | . |  |   --| | .'|     |     |  |  | "
echo " |_____|  _|___|__,|_| |_|_|_|_  |  |_____|_|__,|_|_|_|__|__|\___/  "
echo "       |_|                   |___|                                  "
echo " "
clamscan -V
echo " "
freshclam --show-progress

echo " "                                                                                                   
echo "  _____       _     _   _            _                 _                  "
echo " |  |  |___ _| |___| |_|_|___ ___   | |_ ___ _____ ___| |_ ___ ___ _ _ _  "
echo " |  |  | . | . | .'|  _| |   | . |  |   | . |     | -_| . |  _| -_| | | | "
echo " |_____|  _|___|__,|_| |_|_|_|_  |  |_|_|___|_|_|_|___|___|_| |___|_____| "
echo "       |_|                   |___|                                        "
echo " "
brew --version
echo " "
brew update

echo " "
echo "  _____                   _ _            _                 _                    ___                   _              "
echo " |  |  |___ ___ ___ ___ _| |_|___ ___   | |_ ___ _____ ___| |_ ___ ___ _ _ _   |  _|___ ___ _____ _ _| |___ ___ ___  "
echo " |  |  | . | . |  _| .'| . | |   | . |  |   | . |     | -_| . |  _| -_| | | |  |  _| . |  _|     | | | | .'| -_|_ -| "
echo " |_____|  _|_  |_| |__,|___|_|_|_|_  |  |_|_|___|_|_|_|___|___|_| |___|_____|  |_| |___|_| |_|_|_|___|_|__,|___|___| "
echo "       |_| |___|                 |___|                                                                               "
echo " "
brew upgrade -v --formula

echo " "                                                                                                   
echo "  _____                   _ _            _                 _                                _        "
echo " |  |  |___ ___ ___ ___ _| |_|___ ___   | |_ ___ _____ ___| |_ ___ ___ _ _ _    ___ ___ ___| |_ ___  "
echo " |  |  | . | . |  _| .'| . | |   | . |  |   | . |     | -_| . |  _| -_| | | |  |  _| .'|_ -| '_|_ -| "
echo " |_____|  _|_  |_| |__,|___|_|_|_|_  |  |_|_|___|_|_|_|___|___|_| |___|_____|  |___|__,|___|_,_|___| "
echo "       |_| |___|                 |___|                                                               "
echo " "
#brew upgrade -v --cask
brew cu --no-brew-update --all --yes --cleanup

echo " "
echo "  _____                   _ _            _____            _____            _____ _                "
echo " |  |  |___ ___ ___ ___ _| |_|___ ___   |     |___ ___   |  _  |___ ___   |   __| |_ ___ ___ ___  "
echo " |  |  | . | . |  _| .'| . | |   | . |  | | | | .'|  _|  |     | . | . |  |__   |  _| . |  _| -_| "
echo " |_____|  _|_  |_| |__,|___|_|_|_|_  |  |_|_|_|__,|___|  |__|__|  _|  _|  |_____|_| |___|_| |___| "
echo "       |_| |___|                 |___|                         |_| |_|                            "
echo " " 
mas outdated
echo " "
mas upgrade

echo " "
echo "  _____ _                        _                 _                  "
echo " |     | |___ ___ ___ _ _ ___   | |_ ___ _____ ___| |_ ___ ___ _ _ _  "
echo " |   --| | -_| .'|   | | | . |  |   | . |     | -_| . |  _| -_| | | | "
echo " |_____|_|___|__,|_|_|___|  _|  |_|_|___|_|_|_|___|___|_| |___|_____| "
echo "                         |_|                                          "
echo " " 
brew cleanup -n
echo " "
brew cleanup
echo " "
## Note!! downloads for any installed formulae or casks will be deleted, including downloads for even the latest versions
rm -vrf "$(brew --cache)"
echo " "
## Dump all taps, apps, casks and mac apps into ~/Brewfile
# brew bundle dump --force --describe --file=~/Brewfile

echo " "
echo "  _____                   _ _                          _____ _____  "
echo " |  |  |___ ___ ___ ___ _| |_|___ ___    _____ ___ ___|     |   __| "
echo " |  |  | . | . |  _| .'| . | |   | . |  |     | .'|  _|  |  |__   | "
echo " |_____|  _|_  |_| |__,|___|_|_|_|_  |  |_|_|_|__,|___|_____|_____| "
echo "       |_| |___|                 |___|                              "
echo " "
softwareupdate -l
## Install macOS system updates
#sudo softwareupdate -iva
