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
VERSION="1.2.1"
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

# --- Installation using Git

cd ${INSTALL_PATH}

# Packages

git clone https://github.com/windwp/nvim-autopairs.git
git clone https://github.com/ledger/vim-ledger.git
git clone https://github.com/hrsh7th/cmp-nvim-lsp.git
git clone https://github.com/saadparwaiz1/cmp_luasnip.git

cd ${INSTALL_PATH}
