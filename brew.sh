#!/bin/bash

# Install command-line tools using Homebrew

# (Optionally) Turn off brew's analytics https://docs.brew.sh/Analytics
# brew analytics off

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade


# GNU core utilities (those that come with OS X are outdated)
brew install coreutils
brew install moreutils
# GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed
brew install findutils
# GNU `sed`, overwriting the built-in `sed`
# brew install gnu-sed --with-default-names


brew install homebrew/completions/brew-cask-completion

# Install wget with IRI support
brew install wget --with-iri

# Install more recent versions of some OS X tools
brew install vim
brew install homebrew/dupes/nano
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh

# z hopping around folders
brew install z

# run this script when this file changes guy.
brew install entr

# github util. gotta love `hub fork`, `hub create`, `hub checkout <PRurl>`
brew install hub

# mtr - ping & traceroute. best.
brew install mtr

    # allow mtr to run without sudo
    mtrlocation=$(brew info mtr | grep Cellar | sed -e 's/ (.*//') #  e.g. `/Users/paulirish/.homebrew/Cellar/mtr/0.86`
    sudo chmod 4755 $mtrlocation/sbin/mtr
    sudo chown root $mtrlocation/sbin/mtr


# Install other useful binaries
# brew install the_silver_searcher
# brew install fzf

brew install git
brew install node # This installs `npm` too using the recommended installation method
brew install terminal-notifier
brew install ncdu # find where your diskspace went
brew install zsh
brew install keychain
brew install ack
brew install autojump
brew install cloudfoundry/tap/cf-cli
brew install rbenv
brew install wget


# brew install imagemagick --with-webp
# brew install pv
# brew install rename
# brew install tree
# brew install zopfli
# brew install ffmpeg --with-libvpx
# brew install android-platform-tools
# brew install pidcat   # colored logcat guy

# Remove outdated versions from the cellar
brew cleanup


# npm install some global packages
npm install -g diff-so-fancy
npm install -g npm-check-updates