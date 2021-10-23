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

    use {
      'kaRb94/neoscroll.nvim'
    }

    -- Bufferline
    use {
      'akinsho/bufferline.nvim',
      requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }

    -- Telescope
    use {
      'nvim-telescope/telescope.nvim',
      requires = { {'nvim-lua/plenary.nvim'} }
    } 

    use {
      "nvim-telescope/telescope-fzf-native.nvim",
      run = "make"
    }

    use {
      'kyazdani42/nvim-tree.lua',
      requires = 'kyazdani42/nvim-web-devicons',
      config = function() require'nvim-tree'.setup {} end
    }

    use {
      'neovim/nvim-lspconfig',
      'onsails/lspkind-nvim'
    }

    use {
      "hrsh7th/nvim-compe"
    }

    -- -- Lualine
    -- use {
    --   'hoob3rt/lualine.nvim',
    --   requires = {'kyazdani42/nvim-web-devicons', opt = true}
    -- }

    -- -- Git
    -- use {
    --   "junegunn/gv.vim"
    --   "tpope/vim-fugitive"
    -- }

  end
)

