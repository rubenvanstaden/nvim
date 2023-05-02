APP_NAME := nvim
PKG_PATH := $(HOME)/.local/share/$(APP_NAME)/site/pack

install:
	git clone https://github.com/neovim/nvim-lspconfig.git ${PKG_PATH}/nvim-lspconfig
	git clone https://github.com/L3MON4D3/LuaSnip.git ${PKG_PATH}/LuaSnip
	git clone https://github.com/hrsh7th/nvim-cmp.git ${PKG_PATH}/nvim-cmp
	git clone https://github.com/windwp/nvim-autopairs.git ${PKG_PATH}/nvim-autopairs
	git clone https://github.com/ledger/vim-ledger.git ${PKG_PATH}/vim-ledger
	git clone https://github.com/hrsh7th/cmp-nvim-lsp.git ${PKG_PATH}/cmp-nvim-lsp
	git clone https://github.com/rafamadriz/friendly-snippets.git ${PKG_PATH}/friendly-snippets
	git clone https://github.com/saadparwaiz1/cmp_luasnip.git ${PKG_PATH}/cmp_luasnip

clean:
	rm -rf "$(HOME)/.config/$(APP_NAME)"
	rm -rf "$(HOME)/.local/share/$(APP_NAME)"
