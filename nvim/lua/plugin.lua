local ls = require("luasnip") --{{{

-- require("luasnip.loaders.from_vscode").lazy_load()
require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/snips/" })
require("luasnip.loaders.from_vscode").lazy_load()

-- Virtual Text{{{
ls.config.set_config({
    store_selection_keys = '<c-s>',
	--history = true, --keep around last snippet local to jump back
    --updateevents = "TextChanged,TextChangedI", --update changes as you type
	--enable_autosnippets = true,
}) --}}}

------------------------------------- nvim-lsp ------------------------------------------------

local lsp = require("lspconfig")

local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- https://clangd.llvm.org/installation.html
lsp.clangd.setup {
    capabilities = capabilities,
    cmd = {"clangd", "--background-index", "--clang-tidy"},
    filetypes = {"c", "cpp"},
    root_dir = lsp.util.root_pattern('.git', '.clangd', '.clang-tidy', '.clang-format', 'compile_commands.json'),
}

-- https://github.com/rust-lang/rust-analyzer
lsp.rust_analyzer.setup {
    capabilities = capabilities,
}

-- https://github.com/golang/tools/tree/master/gopls
lsp.gopls.setup {
    capabilities = capabilities,
    cmd = {"gopls", "serve"},
    filetypes = {"go", "gomod"},
    settings = {
        gopls = {
            staticcheck = true,
            analyses = {
                unusedparams = true,
                fieldalignment = true,
                nilness = true,
                shadow = true,
                unusedwrite = true,
                useany = true,
                unusedvariable = true,
            },
        },
    },
}

-- https://github.com/sumneko/lua-language-server
lsp.sumneko_lua.setup {
    capabilities = capabilities,
    settings = {
        Lua = {
            runtime = {
                -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                version = 'LuaJIT',
            },
            diagnostics = {
                -- Get the language server to recognize the `vim` global
                globals = {'vim'},
            },
            workspace = {
                -- Make the server aware of Neovim runtime files
                library = vim.api.nvim_get_runtime_file("", true),
            },
            -- Do not send telemetry data containing a randomized but unique identifier
            telemetry = {
                enable = false,
            },
        },
    },
}

-- https://github.com/emacs-lsp/lsp-pyright
lsp.pyright.setup {
    capabilities = capabilities,
}

------------------------------------- gitsigns ------------------------------------------------

require("gitsigns").setup{

    signs = {
        add    = {hl = 'GitSignsAdd'   , text = '|', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'},
        change = {hl = 'GitSignsChange', text = '|', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
        delete = {hl = 'GitSignsDelete', text = '-', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
    },

    signcolumn = true,  -- Toggle with `:Gitsigns toggle_signs`
    numhl      = false, -- Toggle with `:Gitsigns toggle_numhl`
    linehl     = false, -- Toggle with `:Gitsigns toggle_linehl`
    word_diff  = false, -- Toggle with `:Gitsigns toggle_word_diff`

    watch_gitdir = {
        interval = 1000,
        follow_files = true
    },

    attach_to_untracked = true,

    sign_priority = 6,
    update_debounce = 100,
    status_formatter = nil, -- Use default
    max_file_length = 40000,
}

------------------------------------- telescope ------------------------------------------------

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
        path_display = "shorten",
        use_less = true,
        set_env = {["COLORTERM"] = "truecolor"}, -- default = nil,
        --winblend = 0,
        --color_devicons = true,
        --file_sorter = require "telescope.sorters".get_fuzzy_file,
        --generic_sorter = require "telescope.sorters".get_generic_fuzzy_sorter,

        -- Developer configurations: Not meant for general override
        buffer_previewer_maker = require "telescope.previewers".buffer_previewer_maker,
        file_previewer = require "telescope.previewers".vim_buffer_cat.new,
        grep_previewer = require "telescope.previewers".vim_buffer_vimgrep.new,
        qflist_previewer = require "telescope.previewers".vim_buffer_qflist.new,
    },
}

require('telescope').load_extension('fzy_native')

------------------------------------- nvim-cmp ------------------------------------------------

local luasnip = require("luasnip")
local cmp = require("cmp")

cmp.setup({

    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end,
    },

    mapping = {
        -- Do nothing when tab is pressed.
        ['<Tab>'] = function() end,

        -- Move up or down in snippet popup.
        ['<C-p>'] = cmp.mapping.select_prev_item(),
        ['<C-n>'] = cmp.mapping.select_next_item(),

        -- Confirm and insert selected snipped.
        ['<CR>'] = cmp.mapping.confirm {
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
        },
    },

    sources = {
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
    },
})

------------------------------------- nvim-cmp ------------------------------------------------

local npairs = require('nvim-autopairs')

--local Rule = require("nvim-autopairs.rule")
--npairs.add_rule(Rule("$$","$$","tex"))

--local cmp_autopairs = require('nvim-autopairs.completion.cmp')
--cmp.event:on(
 -- 'confirm_done',
  --cmp_autopairs.on_confirm_done()
--)

npairs.setup({})
