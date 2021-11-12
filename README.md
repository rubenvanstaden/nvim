# NeoVIM

* Installation

```shell
mkdir -p nvim/0.5.1
cd nvim/0.5.1
wget https://github.com/neovim/neovim/releases/download/stable/nvim.appimage
chmod u+x nvim.appimage
sudo ln -s "$HOME/package/nvim/0.5.1/nvim.appimage" "/usr/local/bin/nvim"
```

* Setup configuration

```shell
# Clean local system
./script/clean.sh

# Install on local
./script/install.sh

# Compare changes between local and repo
./script/compare.sh
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
