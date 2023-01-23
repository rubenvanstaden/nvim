require("telescope").setup {

    defaults = {

        prompt_prefix = "  ",
        selection_caret = "  ",
        entry_prefix = "  ",
        initial_mode = "insert",

        layout_config = {
            horizontal = {
                -- Place search bar at top.
                prompt_position = "top",
                -- Make preview 50% of popup window.
                preview_width = 0.5,
            },
        },

        file_ignore_patterns = {},
        file_sorter = require "telescope.sorters".get_fuzzy_file,
        generic_sorter = require "telescope.sorters".get_generic_fuzzy_sorter,
        path_display = "shorten",
        winblend = 0,
        color_devicons = true,
        use_less = true,
        set_env = {["COLORTERM"] = "truecolor"}, -- default = nil,

        -- Developer configurations: Not meant for general override
        buffer_previewer_maker = require "telescope.previewers".buffer_previewer_maker,
        file_previewer = require "telescope.previewers".vim_buffer_cat.new,
        grep_previewer = require "telescope.previewers".vim_buffer_vimgrep.new,
        qflist_previewer = require "telescope.previewers".vim_buffer_qflist.new,
    },
}
