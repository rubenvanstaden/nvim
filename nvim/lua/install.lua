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

    use {
      "terrortylor/nvim-comment"
    }

    use {
      'kaRb94/neoscroll.nvim'
    }

--     -- Git
--     use {
--       "junegunn/gv.vim"
--     }
-- 
--     use {
--       "tpope/vim-fugitive"
--     }

    -- Bufferline
    use {
      'akinsho/bufferline.nvim',
      requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }

--     -- Lualine
--     use {
--       'hoob3rt/lualine.nvim',
--       requires = {'kyazdani42/nvim-web-devicons', opt = true}
--     }

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

    use {
      'kyazdani42/nvim-tree.lua',
      requires = 'kyazdani42/nvim-web-devicons',
      config = function() require'nvim-tree'.setup {} end
    }

    use('neovim/nvim-lspconfig')
    use('onsails/lspkind-nvim')

    use {
      "hrsh7th/nvim-compe"
    }
-- 
--     if packer_bootstrap then
--       require('packer').sync()
--     end

  end
)

