---------------------------------------------------------------

vim.cmd.colorscheme("nord")

local o = vim.opt
local g = vim.g

--------------------- Disable Plugins -------------------------

g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

--------------------- Options ------------------------------

g.mapleader = " "
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
-- Always use clipboard for all operations
o.tabstop = 4
o.linebreak = true

require("snip")
require("lsp")

local opts = { noremap=true, silent=false }

vim.api.nvim_set_keymap("i", "<c-c>", "<esc> | <s-^>", opts)

-- Create a new note after asking for its title.
vim.api.nvim_set_keymap("n", "<leader>zn", "<Cmd>ZkNew { title = vim.fn.input('Title: ') }<CR>", opts)
-- Open notes.
vim.api.nvim_set_keymap("n", "<leader>zo", "<Cmd>ZkNotes { sort = { 'modified' } }<CR>", opts)
-- Open notes associated with the selected tags.
vim.api.nvim_set_keymap("n", "<leader>zt", "<Cmd>ZkTags<CR>", opts)
-- Search for the notes matching a given query.
vim.api.nvim_set_keymap("n", "<leader>zf", "<Cmd>ZkNotes { sort = { 'modified' }, match = { vim.fn.input('Search: ') } }<CR>", opts)
-- Search for the notes matching the current visual selection.
vim.api.nvim_set_keymap("v", "<leader>zf", ":'<,'>ZkMatch<CR>", opts)
