#!/bin/sh

set -ex

INSTALL_PATH="${HOME}/.local/share/nvim/site/pack/_/start"

mkdir -p ${INSTALL_PATH}

git clone https://github.com/neovim/nvim-lspconfig.git ${INSTALL_PATH}/nvim-lspconfig
git clone https://github.com/L3MON4D3/LuaSnip.git ${INSTALL_PATH}/LuaSnip
git clone https://github.com/hrsh7th/nvim-cmp.git ${INSTALL_PATH}/nvim-cmp
git clone https://github.com/windwp/nvim-autopairs.git ${INSTALL_PATH}/nvim-autopairs
git clone https://github.com/ledger/vim-ledger.git ${INSTALL_PATH}/vim-ledger
git clone https://github.com/hrsh7th/cmp-nvim-lsp.git ${INSTALL_PATH}/cmp-nvim-lsp
git clone https://github.com/rafamadriz/friendly-snippets.git ${INSTALL_PATH}/friendly-snippets
git clone https://github.com/saadparwaiz1/cmp_luasnip.git ${INSTALL_PATH}/cmp_luasnip
