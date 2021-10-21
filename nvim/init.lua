-- require('lua.plugin')
-- require('lua.core')

--
-- Packer
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

require('packer').startup(
  function(use)
    -- Plugins here
    use 'wbthomason/packer.nvim'

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
      require('packer').sync()
    end

    use "junegunn/gv.vim"

    use "tpope/vim-fugitive"

    use 'folke/tokyonight.nvim'

    use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}

    use {
      'hoob3rt/lualine.nvim',
      requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }
  end
)

--
-- Options
local opt = vim.opt  -- to set options
local cmd = vim.cmd  -- to execute Vim commands e.g. cmd('pwd')
local fn = vim.fn    -- to call Vim functions e.g. fn.bufnr()
local g = vim.g      -- a table to access global variables

opt.number = true         -- Display line numbers to the left
opt.expandtab = true      -- Use spaces instead of tabs
opt.shiftwidth = 2        -- Number of spaces tabs count for 
opt.smartindent = true    -- Insert indents automatically
opt.termguicolors = true  -- True color support
opt.wrap = false          -- Disable line wrap

-- Theme
cmd[[colorscheme tokyonight]]

-- 
-- Mappings
local function map(mode, bind, exec, opts)
    local options = { noremap = true, silent = true }
    if opts then
        options = vim.tbl_extend('force', options, opts)
    end
    vim.api.nvim_set_keymap(mode, bind, exec, opts)
end

local opt = {} --empty opt for maps with no extra options
local M = {}

-- Windows
map("n", "<C-h>", "<C-w>h", opt)
map("n", "<C-j>", "<C-w>j", opt)
map("n", "<C-k>", "<C-w>k", opt)
map("n", "<C-l>", "<C-w>l", opt)

-- Dashboard 
map("n", ";", ":", opt)
map("n", "J", "10j", opt)
map("n", "K", "10k", opt)

-- Bufferline
require("bufferline").setup {
    options = {
        offsets = {{filetype = "NvimTree", text = "", padding = 1}},

        modified_icon = '●',
        --indicator_icon = '',
        --buffer_close_icon = '',
        --close_icon = '',
        --left_trunc_marker = '|',
        --right_trunc_marker = '',

        max_name_length = 14,
        max_prefix_length = 13,
        tab_size = 20,
        show_tab_indicators = true,
        enforce_regular_tabs = false,
        view = "multiwindow",
        show_buffer_close_icons = true,
        separator_style = "thin"
    }
}

-- Lualine
require'lualine'.setup {
  options = {
    icons_enabled = true,
    theme = 'tokyonight',
    component_separators = {'', ''},
    section_separators = {'', ''},
    disabled_filetypes = {}
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}
