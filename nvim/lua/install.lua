local packer = require("packer")

return packer.startup(
  function(use)

    -- Packer
    use {
        'wbthomason/packer.nvim',

        -- Themes
        'shaunsingh/nord.nvim',
        'folke/tokyonight.nvim',
        "rebelot/kanagawa.nvim",

        -- Plugins
        'ledger/vim-ledger',
        'L3MON4D3/LuaSnip',
        'hrsh7th/nvim-cmp',
        'hrsh7th/cmp-nvim-lsp',
        'saadparwaiz1/cmp_luasnip',
        "rafamadriz/friendly-snippets",
        'nvim-lua/plenary.nvim',
        'norcalli/nvim-colorizer.lua',
        "terrortylor/nvim-comment",
        'nvim-telescope/telescope.nvim',
        'kyazdani42/nvim-tree.lua',
        'neovim/nvim-lspconfig',
        'onsails/lspkind-nvim',
        "hrsh7th/nvim-compe",
        'lewis6991/gitsigns.nvim',
    }

  end
)
