#!/bin/sh

brew update
brew upgrade
brew upgrade --cask
brew cleanup -s
rm -rf $(brew --cache)
