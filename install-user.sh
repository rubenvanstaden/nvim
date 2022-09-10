#!/bin/sh

set -ex

git clone --depth 1 https://github.com/wbthomason/packer.nvim $HOME/.local/share/nvim/site/pack/packer/start/packer.nvim

cp -R nvim ~/.config

nvim +PackerSync
