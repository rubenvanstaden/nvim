require('nvim-tree').setup({
    disable_netrw = true,
    hijack_netrw = true,
    nvim_tree_hide_dotfiles = 1,

    view = {
        width = 35
    },

    git = {
        enable = true,
        ignore = false,
        timeout = 500,
    },
})
