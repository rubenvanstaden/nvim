# NeoVIM

My godlike neovim configuration in lua lang.

## Developers

Use A docker container to test changes before making changes to local machine.

```shell
# Installation
* [nvim](https://github.com/neovim/neovim)

# Build image
./build.sh

# Chroot into container
./run.sh
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
