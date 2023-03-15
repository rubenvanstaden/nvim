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

# Themes

git clone https://github.com/shaunsingh/nord.nvim.git

# Packages

git clone https://github.com/windwp/nvim-autopairs.git
git clone https://github.com/ledger/vim-ledger.git
git clone https://github.com/hrsh7th/cmp-nvim-lsp.git
git clone https://github.com/rafamadriz/friendly-snippets.git
git clone https://github.com/saadparwaiz1/cmp_luasnip.git

# --- fzy-native
# 
# Required to properly sort and filter search.
git clone https://github.com/nvim-telescope/telescope-fzy-native.nvim.git
cd telescope-fzy-native.nvim
git submodule update --init --recursive

cd ${INSTALL_PATH}
