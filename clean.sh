#!/bin/sh

set -ex

# Remove nvim config
rm -rf "$HOME/.config/nvim"

# Remove packer install
rm -rf "$HOME/.local/share/nvim"
