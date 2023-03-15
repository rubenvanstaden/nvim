local o = vim.opt
local g = vim.g

g.loadplugins = false
-- True color support
o.termguicolors = true
-- Always use clipboard for all operations
o.clipboard = "unnamedplus"
-- Display line numbers to the left
o.number = true
-- Highlight current line
o.cursorline = true
-- Display relative numbers.
o.relativenumber = true
-- Use spaces instead of tabs
o.expandtab = true
-- Number of spaces tabs count for 
o.shiftwidth = 4

require("nord")
require("git")
require("cmp")
