vim.g.nvim_tree_hide_dotfiles = 1

require('nvim-tree').setup({
  disable_netrw = true,
  hijack_netrw = true,

  view = {
    width = 35
  }
})
