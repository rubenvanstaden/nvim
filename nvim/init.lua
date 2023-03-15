--vim.cmd("colorscheme warlock")

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

-- Display line numbers to the left
o.number = true
-- Highlight current line
o.cursorline = true
-- Display relative numbers.
o.relativenumber = true
-- Ignore specified files and folders
o.wildignore = { '*.o', '*.a', '__pycache__' }
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

------------- Mappings -------------

local opt = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap

-- Keep visual mode when indenting
map("v", "<", "<gv", opt)
map("v", ">", ">gv", opt)

------------- Plugins -------------

require("plugin")
require('melange').colorscheme()

--vim.g.nord_contrast = true
--vim.g.nord_borders = true
--vim.g.nord_italic = false
--vim.g.nord_uniform_diff_background = true
--vim.g.nord_bold = false

--require('nord').set()
