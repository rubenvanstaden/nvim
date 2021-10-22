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
      "nvim-telescope/telescope.nvim",
      requires = {
          {"nvim-lua/popup.nvim"},
          {"nvim-lua/plenary.nvim"}
      },
      cmd = "Telescope",
      config = function()
        require("telescope").config()
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

    -- -- Telescope
    -- use {
    --   'nvim-telescope/telescope.nvim',
    --   requires = { {'nvim-lua/plenary.nvim'} }
    -- }

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

