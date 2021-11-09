local packer = require("packer")

return packer.startup(
  function(use)

    -- Packer
    use {
      'wbthomason/packer.nvim'
    }

    -- Theme
    use {
      'monsonjeremy/onedark.nvim',
      'shaunsingh/nord.nvim'
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
      --config = function()
        --require("plugins.nvim-tree").setup()
      --end
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

  end
)

