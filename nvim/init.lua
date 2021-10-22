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
    use {
      'wbthomason/packer.nvim'
    }

    -- Theme
    -- use {
    --   'monsonjeremy/onedark.nvim'
    -- }
    use {
      'shaunsingh/nord.nvim'
    }

    -- Git
    use {
      "junegunn/gv.vim"
    }

    use {
      "tpope/vim-fugitive"
    }

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
      "terrortylor/nvim-comment"
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

    -- Treesitter
    -- use {
    --     "nvim-treesitter/nvim-treesitter",
    --     event = "BufRead",
    --     config = function()
    --         require("plugins.treesitter").setup()
    --     end
    -- }

    use {
      'kyazdani42/nvim-tree.lua',
      requires = 'kyazdani42/nvim-web-devicons',
      config = function()
        require'nvim-tree'.setup {}
      end
    }

	use('neovim/nvim-lspconfig')
	use('onsails/lspkind-nvim')

    use {
      "hrsh7th/nvim-compe"
    }

    if packer_bootstrap then
      require('packer').sync()
    end

  end
)

require("nvim_comment").setup()

-- require("onedark").setup()

vim.cmd[[colorscheme nord]]

--
-- Options
vim.opt.number = true         -- Display line numbers to the left
vim.opt.expandtab = true      -- Use spaces instead of tabs
vim.opt.shiftwidth = 2        -- Number of spaces tabs count for 
vim.opt.smartindent = true    -- Insert indents automatically
vim.opt.termguicolors = true  -- True color support
vim.opt.wrap = false          -- Disable line wrap

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
    theme = 'nord',
    component_separators = {'', ''},
    --component_separators = {'', ''},
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

-- compe tab-completion
local t = function(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local check_back_space = function()
    local col = vim.fn.col('.') - 1
    return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
end

-- Use (s-)tab to:
--- move to prev/next item in completion menuone
--- jump to prev/next snippet's placeholder
_G.tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return t "<C-n>"
  elseif vim.fn['vsnip#available'](1) == 1 then
    return t "<Plug>(vsnip-expand-or-jump)"
  elseif check_back_space() then
    return t "<Tab>"
  else
    return vim.fn['compe#complete']()
  end
end

_G.s_tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return t "<C-p>"
  elseif vim.fn['vsnip#jumpable'](-1) == 1 then
    return t "<Plug>(vsnip-jump-prev)"
  else
    -- If <S-Tab> is not working in your terminal, change it to <C-h>
    return t "<S-Tab>"
  end
end

-- function _G.completions()
--     if vim.fn.pumvisible() == 1 then
--       if vim.fn.complete_info()["selected"] ~= -1 then
--         return vim.fn["compe#confirm"]("<CR>")
--       end
--     end
-- end


-- Compe mappings
map("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
map("s", "<Tab>", "v:lua.tab_complete()", {expr = true})
map("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
map("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
-- map("i", "<CR>", "v:lua.completions()", {expr = true})
map("i", "<CR>", "compe#confirm({ 'keys': '<CR>', 'select': v:true })", { expr = true })

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

-- Treesitter
map("n", "<C-n>", ":NvimTreeToggle<CR>", opt)

-- LSP config
local lsp = require 'lspconfig'

lsp.pyright.setup {}
lsp.clangd.setup {}

map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opt)
map('n', '<space>,', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opt)
map('n', '<space>;', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opt)
map('n', '<space>a', '<cmd>lua vim.lsp.buf.code_action()<CR>', opt)
map('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opt)
map('n', '<space>h', '<cmd>lua vim.lsp.buf.hover()<CR>', opt)
map('n', '<space>m', '<cmd>lua vim.lsp.buf.rename()<CR>', opt)
map('n', '<space>r', '<cmd>lua vim.lsp.buf.references()<CR>', opt)
map('n', '<space>s', '<cmd>lua vim.lsp.buf.document_symbol()<CR>', opt)

--
-- Compe
vim.o.completeopt = "menuone,noselect"

require'compe'.setup {
  enabled = true;
  autocomplete = true;
  debug = false;
  min_length = 1;
  preselect = 'enable';
  throttle_time = 80;
  source_timeout = 200;
  resolve_timeout = 800;
  incomplete_delay = 400;
  max_abbr_width = 100;
  max_kind_width = 100;
  max_menu_width = 100;
  documentation = true;
  source = {
    path = true;
    buffer = true;
    calc = true;
    nvim_lsp = true;
    nvim_lua = true;
  };
}






