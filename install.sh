#!/bin/sh

set -ex

# -----------------------------------------------------------------------------------------
# Configuration
# -----------------------------------------------------------------------------------------

cp -R nvim ~/.config

# -----------------------------------------------------------------------------------------
# Packages
# -----------------------------------------------------------------------------------------

INSTALL_PATH="${HOME}/.local/share/nvim/site/pack/ruben/start/"

mkdir -p ${INSTALL_PATH}
cd ${INSTALL_PATH}

git clone https://github.com/neovim/nvim-lspconfig.git
git clone https://github.com/L3MON4D3/LuaSnip.git
git clone https://github.com/hrsh7th/nvim-cmp.git
git clone https://github.com/windwp/nvim-autopairs.git
git clone https://github.com/ledger/vim-ledger.git
git clone https://github.com/hrsh7th/cmp-nvim-lsp.git
git clone https://github.com/rafamadriz/friendly-snippets.git
git clone https://github.com/saadparwaiz1/cmp_luasnip.git
