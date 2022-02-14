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

## Installed Packages

- [packer](https://github.com/wbthomason/packer.nvim/)
- [telescope](https://github.com/nvim-telescope/telescope.nvim)
- [gitsigns](https://github.com/lewis6991/gitsigns.nvim)
- [gina](https://github.com/lambdalisue/gina.vim)
- [nvim-comment](https://github.com/terrortylor/nvim-comment)
- [nvim-compe](https://github.com/hrsh7th/nvim-compe)
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [nvim-tree](https://github.com/kyazdani42/nvim-tree.lua)
- [onedark](https://github.com/monsonjeremy/onedark.nvim)
- [which-key](https://github.com/folke/which-key.nvim)

## Uninstalled Packages

- [vimwiki](https://github.com/vimwiki/vimwiki)
- [ultisnips](https://github.com/SirVer/ultisnips)
- [fonts](https://github.com/powerline/fonts)
- [playground](https://github.com/nvim-treesitter/playground)
- [paq-vim](https://github.com/savq/paq-nvim)
- [nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [nvim-lspfuzzy](https://github.com/ojroques/nvim-lspfuzzy)
- [nvim-colorizer](https://github.com/norcalli/nvim-colorizer.lua)
- [nerd-fonts](https://github.com/ryanoasis/nerd-fonts)
- [neoscroll](https://github.com/karb94/neoscroll.nvim)
- [lush](https://github.com/rktjmp/lush.nvim)
- [lualine](https://github.com/nvim-lualine/lualine.nvim)
- [gv](https://github.com/junegunn/gv.vim)
- [galaxyline](https://github.com/glepnir/galaxyline.nvim)
- [feline](https://github.com/feline-nvim/feline.nvim)
- [everforest](https://github.com/sainnhe/everforest)
- [vim-easymotion](https://github.com/easymotion/vim-easymotion)
- [bufferline](https://github.com/akinsho/bufferline.nvim)
- [awesome-nvim](https://github.com/rockerBOO/awesome-neovim)
- [aquarium-vim](https://github.com/FrenzyExists/aquarium-vim)

## TODO:

* Look at [vimwiki](https://codevion.github.io/#!index.md)
* Add auto-bracket closing support
* Add zshrc to container
* Add LuaSnip

## Done

* Setup git
* LSP for Go
* LSP for Lua
* LSP for Bash
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
