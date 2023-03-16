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

# --- Installation using Git

cd ${INSTALL_PATH}

git clone https://github.com/hrsh7th/nvim-cmp.git
git clone https://github.com/windwp/nvim-autopairs.git
git clone https://github.com/ledger/vim-ledger.git
git clone https://github.com/hrsh7th/cmp-nvim-lsp.git
git clone https://github.com/rafamadriz/friendly-snippets.git
git clone https://github.com/saadparwaiz1/cmp_luasnip.git
