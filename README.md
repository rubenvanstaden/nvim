# NeoVIM

My godlike neovim configuration in lua lang.

## Developers

* Download [nvim](https://github.com/neovim/neovim)

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

* Set nvim-tree default to hide dotfiles.
* Move search bar in telescope to the top.
* LSP for Go
* LSP for Lua
* LSP for Bash
* Add auto-bracket closing support
* Setup git
* Add zshrc to container
* Add LuaSnip

## Done

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
