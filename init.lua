-------------------------------------------------------------------------------
-- Disable Plugins
-------------------------------------------------------------------------------

vim.g.loaded_2html_plugin    = 1
vim.g.loaded_getscriptPlugin = 1
vim.g.loaded_gzip            = 1
vim.g.loaded_logiPat         = 1
vim.g.loaded_rrhelper        = 1
vim.g.loaded_spec            = 1
vim.g.loaded_tar             = 1
vim.g.loaded_tarPlugin       = 1
vim.g.loaded_vimball         = 1
vim.g.loaded_vimballPlugin   = 1
vim.g.loaded_zip             = 1
vim.g.loaded_zipPlugin       = 1
vim.g.loaded_netrw           = 1
vim.g.loaded_netrwPlugin     = 1
vim.g.loaded_netrwSettings   = 1
vim.g.loaded_netrwFileHandlers = 1

-------------------------------------------------------------------------------
-- Options
-------------------------------------------------------------------------------

vim.g.mapleader = " "

-- Always use clipboard for all operations
vim.o.clipboard = "unnamedplus"

-- True color support
vim.o.termguicolors = true

-- Highlight current line
vim.o.cursorline = true

-- Use spaces instead of tabs
vim.o.expandtab = true

-- Number of spaces tabs count for 
vim.o.shiftwidth = 4

-- Always use clipboard for all operations
vim.o.tabstop = 4

-- Enable line wrapping
vim.o.linebreak = true

-- Auto-indent new lines
vim.o.autoindent = true

-- Highlight matching parentheses. Maybe remove autobracket plugin
vim.o.showmatch = true

-- Show the current mode in the command line
vim.o.showmode = false

-- Show partial commands in the command line while typing
vim.o.showcmd = true

-- Set the status line to always be visible
vim.o.laststatus = 2

-- Set the command line height
vim.o.cmdheight = 0

-- Set completeopt for better completion experience
vim.o.completeopt = "menuone,noselect"

-------------------------------------------------------------------------------
-- Enables
-------------------------------------------------------------------------------

-- Enable syntax highlighting
vim.cmd("syntax on")

-- Enable file type detection
vim.cmd("filetype on")

-- Enable file type based indentation
vim.cmd("filetype indent on")

-- Enable file type based plugins
vim.cmd("filetype plugin on")

-- Enable colorscheme
vim.cmd.colorscheme("solarized")

--vim.api.nvim_create_autocmd( { "BufWritePre" }, {
--    pattern = { "*.rs" },
--    command = [[ !cargo fmt ]],
--})
--
vim.api.nvim_set_keymap('n', 'v', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'V', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-v>', '<Nop>', { noremap = true, silent = true })

--vim.o.number = true
--vim.o.relativenumber = true


-------------------------------------------------------------------------------
-- Plugins
-------------------------------------------------------------------------------

require("snip")
require("lsp")

-------------------------------------------------------------------------------
