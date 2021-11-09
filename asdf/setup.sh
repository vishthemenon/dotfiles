#! /usr/bin/env sh

DIR=$(dirname "$0")
cd "$DIR"

. ../scripts/functions.sh

COMMENT=\#*

info "Installing ASDF plugins and packages..."

find * -name "*.list" | while read fn; do
    plugin="${fn%.*}"
    asdf plugin-add $plugin
    while read version; do
        # if [[ $version == $COMMENT ]]; then continue; fi
        substep_info "Installing $plugin $version..."
        asdf install $plugin $version
    done < "$fn"
    success "Finished installing $plugin with asdf"
done
