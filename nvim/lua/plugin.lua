
local opt = { noremap = true, silent = true }

local map = vim.api.nvim_set_keymap

local luasnip = require("luasnip") --{{{

require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/snips/" })
require("luasnip.loaders.from_vscode").lazy_load()

luasnip.config.set_config({
    store_selection_keys = '<c-s>',
})

map("i", "<c-j>", "<cmd>lua require'luasnip'.jump(1)<CR>", opt)
map("s", "<c-j>", "<cmd>lua require'luasnip'.jump(1)<CR>", opt)
map("i", "<c-k>", "<cmd>lua require'luasnip'.jump(-1)<CR>", opt)
map("s", "<c-k>", "<cmd>lua require'luasnip'.jump(-1)<CR>", opt)


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

map('n', 'gd',        "<cmd> lua vim.lsp.buf.definition() <cr>",  opt)
map('n', '<Leader>a', "<cmd> lua vim.lsp.buf.code_action() <cr>", opt)
map('n', '<Leader>h', "<cmd> lua vim.lsp.buf.hover() <cr>",       opt)
map('n', '<Leader>m', "<cmd> lua vim.lsp.buf.rename() <cr>",      opt)
map('n', '<Leader>r', "<cmd> lua vim.lsp.buf.references() <cr>",  opt)

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
    },
}

require('telescope').load_extension('fzy_native')

map("n", "<Leader>fb", "<cmd> lua require('telescope.builtin').buffers() <cr>",        opt)
map("n", "<Leader>fg", "<cmd> lua require('telescope.builtin').live_grep() <cr>",      opt)
map("n", "<Leader>ff", "<cmd> lua require('telescope.builtin').find_files() <cr>",     opt)
map("n", "<Leader>lr", "<cmd> lua require('telescope.builtin').lsp_references() <cr>", opt)
map("n", "<Leader>gt", "<cmd> lua require('telescope.builtin').git_status() <cr>",     opt)

------------------------------------- nvim-cmp ------------------------------------------------

local cmp = require("cmp")

local has_words_before = function()
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

cmp.setup({

    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end,
    },

    mapping = {
        -- Do nothing when tab is pressed.
        -- ['<Tab>'] = function() end,
        ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
            elseif has_words_before() then
                cmp.complete()
            else
                fallback()
            end
        end, { "i", "s" }),

        -- Move up or down in snippet popup.
        ['<C-p>'] = cmp.mapping.select_prev_item(),
        ['<C-n>'] = cmp.mapping.select_next_item(),

        -- Confirm and insert selected snipped.
        ['<CR>'] = cmp.mapping.confirm {
            --behavior = cmp.ConfirmBehavior.Replace,
            select = true,
        },
    },

    sources = {
        { name = 'luasnip' },
        { name = 'nvim_lsp' },
    },

    formatting = {
        fields = { "abbr", "menu" },
        format = function(entry, vim_item)
            vim_item.menu = ({
                luasnip = "[Snip]",
                nvim_lsp = "[LSP]",
                nvim_lua = "[Lua]",
                latex_symbols = "[LaTeX]",
            })[entry.source.name]
            return vim_item
        end
    },
})

map("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
map("s", "<Tab>", "v:lua.tab_complete()", {expr = true})

------------------------------------- nvim-cmp ------------------------------------------------

local npairs = require('nvim-autopairs')
npairs.setup({})

-- If you want insert `(` after select function or method item
local cmp_autopairs = require('nvim-autopairs.completion.cmp')
cmp.event:on(
    'confirm_done',
    cmp_autopairs.on_confirm_done()
)
