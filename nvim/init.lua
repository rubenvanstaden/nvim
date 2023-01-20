local o = vim.opt
local g = vim.g

vim.cmd[[colorscheme dune]]

------------- Global -------------

g.ledger_maxwidth = 80
-- Map leader to spacebar
g.mapleader = " "
-- Disable auto save
g.auto_save = false

-- netrw
--
-- https://vonheikemen.github.io/devlog/tools/using-netrw-vim-builtin-file-explorer/
--
-- Window width
g.netrw_winsize = 20
-- Hide banner
g.netrw_banner = 0
-- Tree-style view
g.netrw_liststyle = 3
-- Open in previous window
g.netrw_browse_split = 4
-- Open with right splitting
g.netrw_altv = 1

-- Toggle hidden files
-- gh

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
