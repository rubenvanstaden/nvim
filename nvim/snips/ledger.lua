
-- https://sbulav.github.io/vim/neovim-setting-up-luasnip/
--
local ls = require("luasnip")

local snip = ls.snippet
local f = ls.function_node
local t = ls.text_node
local i = ls.insert_node

local date = function() return {os.date('%Y/%m/%d')} end

ls.config.set_config({
    store_selection_keys = '<c-s>',
})

local snippets = {}

local entry = snip({
    trig = "ec",
    name = "Entry",
    dscr = "Entry to ledger journal for checking account"
},
{
    f(date, {}), t({" * "}), i(1, "<name>"),
    t({"", "    Expenses:"}), i(2, "<expense>"), t({"  "}), i(3, "<value> CAD"),
    t({"", "    Assets:"}),   i(4, "<bank>"),    t({":Checking"}),
})

table.insert(snippets, entry)

return snippets
