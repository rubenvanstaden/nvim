local packer = require("packer")

return packer.startup(
  function(use)

    -- Packer
    use {
      'wbthomason/packer.nvim'
    }

    -- Installation
    use {
      'L3MON4D3/LuaSnip',
      'hrsh7th/nvim-cmp',
      'hrsh7th/cmp-nvim-lsp',
      'saadparwaiz1/cmp_luasnip',
      "rafamadriz/friendly-snippets",
    }

    -- Theme
    use {
    --   'kdheepak/monochrome.nvim',
    --   'ldelossa/vimdark',
      'ful1e5/onedark.nvim',
      'mhartington/oceanic-next',
      'shaunsingh/nord.nvim',
      'marko-cerovac/material.nvim',
      'frenzyexists/aquarium-vim',
      "rebelot/kanagawa.nvim",
      'EdenEast/nightfox.nvim',
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

    use {
      "nvim-telescope/telescope-fzf-native.nvim",
      run = "make"
    }

    -- Navigation Tree
    use {
      'kyazdani42/nvim-tree.lua',
      requires = 'kyazdani42/nvim-web-devicons'
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

    -- Julia
    use {
      'JuliaEditorSupport/julia-vim'
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

