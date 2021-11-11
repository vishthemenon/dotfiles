#! /usr/bin/env sh

DIR=$(dirname "$0")
cd "$DIR"

. ../scripts/functions.sh

info "Linking iterm2 preferences file to home directory"

symlink ./com.googlecode.iterm2.plist ~/com.googlecode.iterm2.plist