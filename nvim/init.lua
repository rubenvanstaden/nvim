local o = vim.opt
local g = vim.g

vim.cmd[[colorscheme dune]]

------------- Global -------------

g.ledger_maxwidth = 80
-- Map leader to spacebar
g.mapleader = " "
-- Disable auto save
g.auto_save = false
-- Disable netrw
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

------------- Local -------------

-- Display line numbers to the left
o.number = true
-- Use spaces instead of tabs
o.expandtab = true
-- Number of spaces tabs count for 
o.shiftwidth = 4
-- Insert indents automatically
o.smartindent = true
-- True color support
o.termguicolors = true
-- Disable line wrap
o.wrap = false
-- Always use clipboard for all operations
o.clipboard = "unnamedplus"
-- Always use clipboard for all operations
o.tabstop = 4

------------- Plugins -------------

require "plugin.lspconfig"
require "plugin.telescope"
require "plugin.gitsigns"
require "plugin.nvim-cmp"
require "plugin.luasnip"

-- require "plugin.colorizer"
-- require "plugin.comment"
-- require "plugin.nvim-tree"

require "mappings"
