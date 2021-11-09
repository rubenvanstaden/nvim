#!/bin/sh

set -ex

rm -rf "$HOME/.local/share/nvim/site/pack/packer"

git clone --depth 1 https://github.com/wbthomason/packer.nvim \
  "$HOME/.local/share/nvim/site/pack/packer/start/packer.nvim"

rm -rf ~/.config/nvim
cp -R nvim ~/.config
