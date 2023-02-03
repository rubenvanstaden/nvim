vim.cmd("colorscheme dune")

local o = vim.opt
local g = vim.g

------------- Global -------------

-- Map leader to spacebar
g.mapleader = " "
-- Disable auto save
g.auto_save = false
-- Disable netrw
g.loaded_netrw = 1
-- Disable netrw
g.loaded_netrwPlugin = 1

------------- Local -------------

-- Ignore specified files and folders
o.wildignore = { '*.o', '*.a', '__pycache__' }
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

require("plugin")
require("mappings")

g.ledger_detailed_first = 1
g.ledger_maxwidth = 80
g.ledger_fillstring = '    -'

