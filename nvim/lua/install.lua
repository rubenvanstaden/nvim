local packer = require("packer")

return packer.startup(
  function(use)

    -- Packer
    use {
        'wbthomason/packer.nvim',
        'ledger/vim-ledger',
    }

    -- Installation
    use {
        'L3MON4D3/LuaSnip',
        'hrsh7th/nvim-cmp',
        'hrsh7th/cmp-nvim-lsp',
        'saadparwaiz1/cmp_luasnip',
        "rafamadriz/friendly-snippets",
    }

    -- Colorizer
    use {
        'norcalli/nvim-colorizer.lua',
        config = function()
            require("colorizer").setup()
        end
    }

    -- Commenter
    use {
        "terrortylor/nvim-comment"
    }

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim',
        requires = {
            {'nvim-lua/plenary.nvim'}
        }
    }

    -- Navigation Tree
    use {
        'kyazdani42/nvim-tree.lua',
    }

    -- LSP Config
    use {
        'neovim/nvim-lspconfig',
        'onsails/lspkind-nvim'
    }

    -- Compe
    use {
        "hrsh7th/nvim-compe"
    }

    -- Git
    use {
        'lewis6991/gitsigns.nvim',
        requires = {
            'nvim-lua/plenary.nvim'
        },
    }

  end
)
