-- https://sbulav.github.io/vim/neovim-setting-up-luasnip/
--
local ls = require("luasnip")

local snip = ls.snippet
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta

local f = ls.function_node
local t = ls.text_node
local i = ls.insert_node

local snippets = {}

local ifs = snip({
    trig = "myif",
},
{
    t({"if "}),
    i(1, "true"),
    t{ " {", "" },
    t"\t",
    i(0),
    t{ "", "}" },
})

local test = snip({
    trig = "mytest",
}, {
    t"func ",
    i(1, "Name"),
    t"(t *testing.T)",
    t{ " {", "" },
    t"\t",
    i(0),
    t{ "", "}" },
})

local typei = snip({
    trig = "mytypei",
},
{
    t"type ",
    i(1, "Name"),
    t{ " interface {", "" },
    t"\t",
    i(0),
    t{ "", "}" },
})

local types = snip({
    trig = "mytypes",
},
{
    t"type ",
    i(1, "Name"),
    t{ " struct {", "" },
    t"\t",
    i(0),
    t{ "", "}" },
})

local func = snip({
    trig = "myfunc",
},
{
    t"func ",
    i(1, "Name"),
    t"(",
    i(2),
    t")",
    i(3),
    t{ " {", "" },
    t"\t",
    i(0),
    t{ "", "}" },
})

local fori = snip({
    trig = "myfori",
},
{
    t"for ",
    i(1, "i := 0"),
    t";",
    i(2, "i < 10"),
    t";",
    i(3, "i++"),
    t{ " {", "" },
    t"\t",
    i(0),
    t{ "", "}" },
})

local forr = snip({
    trig = "myforr",
},
{
    t"for ",
    i(1, "k, v"),
    t" := range ",
    i(2, "expr"),
    t{ " {", "" },
    t"\t",
    i(0),
    t{ "", "}" },
})

table.insert(snippets, ifs)
table.insert(snippets, test)
table.insert(snippets, func)
table.insert(snippets, typei)
table.insert(snippets, types)
table.insert(snippets, fori)
table.insert(snippets, forr)

return snippets
