# NeoVIM

My godlike neovim configuration in lua lang.

## Developers

Use A docker container to test changes before making changes to local machine.

```shell
# Build image
./build.sh

# Chroot into container
./run.sh
```

## TODO:

* Create LSP examples: C++, Lua
* Copy to host clipboard
* Setup git
* Setup compe
* Add zshrc to container
* Add LuaSnip

# Done

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
