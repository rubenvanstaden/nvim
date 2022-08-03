require('nvim-tree').setup({
    disable_netrw = true,
    hijack_netrw = true,

    filters = {
        dotfiles = true,
    },

    renderer = {
        add_trailing = false,
        group_empty = false,
        highlight_git = false,
        full_name = false,
        highlight_opened_files = "none",
        root_folder_modifier = ":~",
        indent_markers = {
            enable = false,
            inline_arrows = true,
            icons = {
                corner = "",
                edge = "",
                item = "",
                none = "",

                -- corner = "└",
                -- edge = "│",
                -- item = "│",
                -- none = " ",
            },
        },
        icons = {
            webdev_colors = true,
            git_placement = "before",
            padding = " ",
            symlink_arrow = " ➛ ",
            show = {
                file = true,
                folder = true,
                folder_arrow = true,
                git = true,
            },
            glyphs = {
                default = "",
                symlink = "",
                bookmark = "",
                folder = {
                    arrow_closed = "",
                    arrow_open = "",
                    default = "-",
                    open = "-",
                    empty = "",
                    empty_open = "",

                    -- default = "",
                    -- open = "",
                    -- empty = "",
                    -- empty_open = "",
                    -- symlink = "",
                    -- symlink_open = "",
                },
                git = {
                    unstaged = "✗",
                    staged = "✓",
                    unmerged = "",
                    renamed = "➜",
                    untracked = "★",
                    deleted = "",
                    ignored = "◌",
                },
            },
        },
        -- special_files = { "Cargo.toml", "Makefile", "README.md" },
        special_files = { "" },
        symlink_destination = true,
    },

    view = {
        width = 35
    },

    git = {
        enable = true,
        ignore = false,
        timeout = 500,
    },
})
