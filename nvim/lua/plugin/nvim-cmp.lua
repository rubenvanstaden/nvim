local luasnip = require("luasnip")
local cmp = require("cmp")

cmp.setup({

    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end,
    },

    mapping = {
        ['<C-p>'] = cmp.mapping.select_prev_item(),
        ['<C-n>'] = cmp.mapping.select_next_item(),
    },

    sources = {
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
    },
})
