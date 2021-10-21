-- require('lua.plugin')
-- require('lua.core')


vim.g.mapleader = " "
vim.g.auto_save = false


--
-- Packer
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

require('packer').startup(
  function(use)

    -- Packer
    use 'wbthomason/packer.nvim'

    -- Theme
    use 'monsonjeremy/onedark.nvim'
    use 'mhartington/oceanic-next'
    use 'folke/tokyonight.nvim'

    use "junegunn/gv.vim"

    use "tpope/vim-fugitive"

    -- Bufferline
    use {
      'akinsho/bufferline.nvim',
      requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }

    -- Lualine
    use {
      'hoob3rt/lualine.nvim',
      requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }

    -- use "terrortylor/nvim-comment"
    -- require('nvim_comment').setup()

    use {
      "terrortylor/nvim-comment",
      -- cmd = "CommentToggle",
      config = function()
          require("nvim_comment").setup()
      end
    }

    -- Telescope
    use {
      "nvim-telescope/telescope.nvim",
      requires = {
          {"nvim-lua/popup.nvim"},
          {"nvim-lua/plenary.nvim"}
      },
      cmd = "Telescope",
      config = function()
        require("plugins.telescope").config()
      end
    }

    use {
      "nvim-telescope/telescope-fzf-native.nvim",
      run = "make",
      cmd = "Telescope"
    }

    use {
      "nvim-telescope/telescope-media-files.nvim",
      cmd = "Telescope"
    }

    if packer_bootstrap then
      require('packer').sync()
    end

  end
)

--
-- Options
vim.opt.number = true         -- Display line numbers to the left
vim.opt.expandtab = true      -- Use spaces instead of tabs
vim.opt.shiftwidth = 2        -- Number of spaces tabs count for 
vim.opt.smartindent = true    -- Insert indents automatically
vim.opt.termguicolors = true  -- True color support
vim.opt.wrap = false          -- Disable line wrap

-- Theme
-- vim.cmd[[colorscheme OceanicNext]]
-- vim.cmd[[colorscheme tokyonight]]
require('onedark').setup()

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
    theme = 'onedark',
    component_separators = {'', ''},
    --component_separators = {'', ''},
    --section_separators = {'', ''},
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

require('nvim_comment').setup()

-- 
-- Mappings
local opt = {}

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

-- Telescope
map("n", "<Leader>fw", [[<Cmd> Telescope live_grep<CR>]], opt)
map("n", "<Leader>gt", [[<Cmd> Telescope git_status <CR>]], opt)
map("n", "<Leader>cm", [[<Cmd> Telescope git_commits <CR>]], opt)
map("n", "<Leader>ff", [[<Cmd> Telescope find_files <CR>]], opt)
map("n", "<Leader>fg", [[<Cmd> Telescope live_grep <CR>]], opt)
map("n", "<Leader>fb", [[<Cmd> Telescope buffers<CR>]], opt)

-- Commenter Keybinding
map("n", "<leader>/", ":CommentToggle<CR>", opt)
map("v", "<leader>/", ":CommentToggle<CR>", opt)
