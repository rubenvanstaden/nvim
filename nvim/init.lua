require "install"

vim.g.ledger_maxwidth = 80
vim.g.ledger_fillstring = '    -'

-- Globals
--
-- Map leader to spacebar
vim.g.mapleader = " "
-- Disable auto save
vim.g.auto_save = false

-- Locals
--
-- Display line numbers to the left
vim.opt.number = true
-- Use spaces instead of tabs
vim.opt.expandtab = true
-- Number of spaces tabs count for 
vim.opt.shiftwidth = 4
-- Insert indents automatically
vim.opt.smartindent = true
-- True color support
vim.opt.termguicolors = true
-- Disable line wrap
vim.opt.wrap = false
-- Always use clipboard for all operations
vim.opt.clipboard = "unnamedplus"
-- Always use clipboard for all operations
vim.opt.tabstop = 4

-- Netwr options
--
-- Window width
vim.g.netrw_winsize = 20
-- Hide banner
vim.g.netrw_banner = 0
-- Tree-style view
vim.g.netrw_liststyle = 3
-- Open in previous window
vim.g.netrw_browse_split = 4
-- Open with right splitting
vim.g.netrw_altv = 1

-- -- Plugin configs
require "plugin.comment"
require "plugin.nvim-cmp"
require "plugin.gitsigns"
require "plugin.nvim-tree"
require "plugin.telescope"
require "plugin.luasnip"
require "plugin.lspconfig"

require "mappings"

vim.cmd[[colorscheme dune]]
