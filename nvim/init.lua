require "install"
require "options"
-- require "onedark"
require "theme"

require "plugins.comment"
require "plugins.nvim-cmp"
require "plugins.nvim-tree"
require "plugins.lspconfig"
require "plugins.telescope"
require "plugins.gitsigns"
require "plugins.luasnip"

require "mappings"

require("luasnip.loaders.from_vscode").lazy_load()
