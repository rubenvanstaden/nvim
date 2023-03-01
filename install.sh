#!/bin/sh

set -ex

# -----------------------------------------------------------------------------------------
# Install nvim configuration
# -----------------------------------------------------------------------------------------

cp -R nvim ~/.config

# -----------------------------------------------------------------------------------------
# Install nvim packages
# -----------------------------------------------------------------------------------------

TMP_PATH="/tmp"
INSTALL_PATH="${HOME}/.local/share/nvim/site/pack/packer/start/"

rm -rf ${INSTALL_PATH}
mkdir -p ${INSTALL_PATH}

cd ${TMP_PATH}

# --- plenary.nvim
VERSION="0.1.2"
wget "https://github.com/nvim-lua/plenary.nvim/archive/refs/tags/v${VERSION}.tar.gz"
tar xvzf "v${VERSION}.tar.gz" -C ${INSTALL_PATH}

# --- nvim-lspconfig
VERSION="0.1.4"
wget "https://github.com/neovim/nvim-lspconfig/archive/refs/tags/v${VERSION}.tar.gz"
tar xvzf "v${VERSION}.tar.gz" -C ${INSTALL_PATH}

# --- LuaSnip
VERSION="1.1.0"
wget "https://github.com/L3MON4D3/LuaSnip/archive/refs/tags/v${VERSION}.tar.gz"
tar xvzf "v${VERSION}.tar.gz" -C ${INSTALL_PATH}

# --- nvim-cmp
VERSION="0.0.1"
wget "https://github.com/hrsh7th/nvim-cmp/archive/refs/tags/v${VERSION}.tar.gz"
tar xvzf "v${VERSION}.tar.gz" -C ${INSTALL_PATH}

# --- gitsigns.nvim
VERSION="0.6"
wget "https://github.com/lewis6991/gitsigns.nvim/archive/refs/tags/v${VERSION}.tar.gz"
tar xvzf "v${VERSION}.tar.gz" -C ${INSTALL_PATH}

# --- telescope
VERSION="0.1.1"
wget "https://github.com/nvim-telescope/telescope.nvim/archive/refs/tags/${VERSION}.tar.gz"
tar xvzf "${VERSION}.tar.gz" -C ${INSTALL_PATH}

# --- Installation using Git

cd ${INSTALL_PATH}

rm -rf cmp-nvim-lsp friendly-snippets cmp_luasnip

git clone https://github.com/ishan9299/nvim-solarized-lua.git
git clone https://github.com/rktjmp/lush.nvim.git
git clone https://github.com/mcchrish/zenbones.nvim.git
git clone https://github.com/ntk148v/komau.vim.git
git clone https://github.com/huyvohcmc/atlas.vim.git
git clone https://github.com/davidosomething/vim-colors-meh.git
git clone https://github.com/folke/tokyonight.nvim.git
#git clone https://github.com/hardselius/warlock.git
git clone https://github.com/nikolvs/vim-sunbather.git
git clone https://github.com/kadekillary/skull-vim.git
git clone https://github.com/axvr/photon.vim.git
git clone https://github.com/widatama/vim-phoenix.git
git clone https://github.com/robertmeta/nofrils.git
git clone https://github.com/fxn/vim-monochrome.git
git clone https://github.com/jaredgorski/fogbell.vim.git
git clone https://github.com/karoliskoncevicius/distilled-vim.git
git clone https://github.com/kvrohit/rasmus.nvim.git
git clone https://github.com/cocopon/iceberg.vim.git
git clone https://github.com/catppuccin/nvim.git

# --- vim-ledger
git clone https://github.com/ledger/vim-ledger.git

# --- cmp-nvim-lsp
git clone https://github.com/hrsh7th/cmp-nvim-lsp.git

# --- friendly-snippets
git clone https://github.com/rafamadriz/friendly-snippets.git

# --- cmp-luasnip
git clone https://github.com/saadparwaiz1/cmp_luasnip.git

# --- nord-theme
git clone https://github.com/shaunsingh/nord.nvim.git

# --- fzy-native
# 
# Required to properly sort and filter search.
git clone https://github.com/nvim-telescope/telescope-fzy-native.nvim.git
cd telescope-fzy-native.nvim
git submodule update --init --recursive

cd ${INSTALL_PATH}
