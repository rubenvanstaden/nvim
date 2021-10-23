#!/bin/sh

# Copy changes from local ~/.config/nvim into project

set -ex

rm -rf nvim
cp -R ~/.config/nvim .
