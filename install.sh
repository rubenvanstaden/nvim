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

# --- Installation using Git

cd ${INSTALL_PATH}

git clone https://github.com/windwp/nvim-autopairs.git
git clone https://github.com/ledger/vim-ledger.git

cd ${INSTALL_PATH}
