#!/bin/sh

# Copy changes from local ~/.config/nvim into project

set -ex

cp -R ~/.config/nvim/* nvim/*
