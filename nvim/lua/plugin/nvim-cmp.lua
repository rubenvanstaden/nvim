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
