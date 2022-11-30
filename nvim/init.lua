require "core.install"
-- require "core.theme"

-- Locals
vim.opt.number = true             -- Display line numbers to the left
vim.opt.expandtab = true          -- Use spaces instead of tabs
vim.opt.shiftwidth = 4            -- Number of spaces tabs count for 
vim.opt.smartindent = true        -- Insert indents automatically
vim.opt.termguicolors = true      -- True color support
vim.opt.wrap = false              -- Disable line wrap
vim.opt.clipboard = "unnamedplus" -- Always use clipboard for all operations
vim.opt.tabstop = 4               -- Always use clipboard for all operations

-- Globals
vim.g.foldmethod=indent
vim.g.foldlevel=1
vim.g.foldclose=all
vim.g.mapleader = " "
vim.g.auto_save = false

require "plugins.comment"
require "plugins.nvim-cmp"
require "plugins.nvim-tree"
require "plugins.lspconfig"
require "plugins.telescope"
require "plugins.gitsigns"
require "plugins.luasnip"

require "core.mappings"

vim.g.nord_contrast = true
vim.g.nord_borders = false
vim.g.nord_disable_background = false
vim.g.nord_italic = false
vim.g.nord_uniform_diff_background = true
vim.g.nord_bold = false

vim.cmd[[colorscheme dune]]
-- vim.cmd[[colorscheme onedark]]
-- vim.cmd[[colorscheme kanagawa]]
-- vim.cmd[[colorscheme tokyonight-storm]]
