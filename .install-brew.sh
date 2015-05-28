#!/usr/bin/env bash

brew update
brew upgrade

# Taps that I tend to use.
brew tap homebrew/dupes
brew tap homebrew/x11
brew tap hombrew/science

# Editors and other things I can't live without
brew install git
brew install vim --override-system-vi
brew install bash-completion
brew install tig --with-docs

# Build systems I like
brew install ant
brew install gradle
brew install sbt
brew install docker
brew install boot2docker

# Various languages I toy with
brew install python
brew install python3
brew install clisp
brew install elixir
brew install erlang
brew install gcc
brew install lua
brew install mit-scheme
brew install typesafe-activator

# Other useful utilities
brew install antlr
brew install fontforge
brew install grep --with-default-names
brew install rename
brew install w3m
brew install wget
brew install ranger
