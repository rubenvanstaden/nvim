local opt = { noremap = true, silent = true }

local map = vim.api.nvim_set_keymap

require('nvim-autopairs').setup({})

------------------------------------------------------------------------------

local snip = require("luasnip")

require("luasnip.loaders.from_lua").load({
    paths = "~/.config/nvim/snips/"
})

-- require("luasnip.loaders.from_vscode").lazy_load()

snip.config.set_config({
    store_selection_keys = '<c-s>',
})

map("i", "<c-j>", "<cmd>lua require'luasnip'.jump(1)<CR>", opt)
map("s", "<c-j>", "<cmd>lua require'luasnip'.jump(1)<CR>", opt)
map("i", "<c-k>", "<cmd>lua require'luasnip'.jump(-1)<CR>", opt)
map("s", "<c-k>", "<cmd>lua require'luasnip'.jump(-1)<CR>", opt)

------------------------------------------------------------------------------

local cmp = require("cmp")

cmp.setup({

    snippet = {
        expand = function(args)
            snip.lsp_expand(args.body)
        end,
    },

    mapping = {
        ['<Tab>'] = function() end,
        ['<C-p>'] = cmp.mapping.select_prev_item(),
        ['<C-n>'] = cmp.mapping.select_next_item(),
        ['<CR>'] = cmp.mapping.confirm { select = true },
    },

    sources = {
        { name = 'luasnip' },
        { name = 'nvim_lsp' },
        --{ name = 'nvim_lua' },
    },

    formatting = {
        fields = { "abbr", "menu" },
        format = function(entry, vim_item)
            vim_item.menu = ({
                luasnip = "[Snip]",
                nvim_lsp = "[LSP]",
                --nvim_lua = "[Lua]",
            })[entry.source.name]
            return vim_item
        end
    },
})

map("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
