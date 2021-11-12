# NeoVIM

* Download [nvim v0.5.1](https://github.com/neovim/neovim) package

```shell
# Installation

# Clean local system
./script/clean.sh

# Install on local
./script/install.sh

# Compare changes between local and repo
./script/compare.sh
```

* Use a docker container to test changes before making changes to local machine.

```shell
# Build image
docker build -t nvim-image .

# Chroot into container
docker run \
  --volume "$PWD/nvim:/root/.config/nvim" \
  --volume "$PWD/test:/opt/test" \
  -it --rm nvim-image \
  zsh
```

## TODO:

* LSP for Go
* LSP for Lua
* LSP for Bash
* Add auto-bracket closing support
* Setup git
* Add zshrc to container
* Add LuaSnip

## Done

* Move search bar in telescope to the top.
* Set nvim-tree default to hide dotfiles.
* Copy to host clipboard
* Setup compe
* LSP for C++
* LSP for Python
* Setup telescope
* Setup commenter
* Setup options
* Setup mappings
* Setup theme
* Setup packer
* Setup bufferline
* Setup lualine

## Issues in Docker

* Sync scrolling cannot be disbaled. Maybe test with a different terminal.
