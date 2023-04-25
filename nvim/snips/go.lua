-- https://sbulav.github.io/vim/neovim-setting-up-luasnip/

local ls = require("luasnip")

local snip = ls.snippet

local t = ls.text_node
local i = ls.insert_node

local snippets = {}

-- func 1(2) {
--     3
-- }
local fn = snip({
    trig = "fn",
}, {
    t"func ", i(1), t{"("}, i(2), t{")"}, t{" {"},
    t{"", "\t"}, i(3),
    t{"", "}" },
})

-- func (s *1) 2(3) {
--     4
-- }
local fn_struct = snip({
    trig = "fs",
}, {
    t"func ", t{"("}, i(1), t{") "}, i(2), t{"("}, i(3), t{")"}, t{" {"},
    t{"", "\t"}, i(4),
    t{"", "}" },
})

-- func 1(t *testing.T) {
--     2
-- }
local fn_test = snip({
    trig = "ft",
}, {
    t"func ", i(1), t{"(t *testing.T)"}, t{" {"},
    t{"", "\t"}, i(2),
    t{"", "}" },
})

-- if 1 {
--    2
-- }
local ifs = snip({
    trig = "if",
},
{
    t({"if "}), i(1), t{ " {"},
    t{"", "\t"}, i(2),
    t{"", "}" },
})

-- if 1 {
--    t.Errorf(2)
-- }
local if_test = snip({
    trig = "ift",
},
{
    t({"if "}), i(1), t{ " {"},
    t{"", "    t.Errorf("}, i(2), t{")"},
    t{"", "}" },
})

local typei = snip({
    trig = "typei",
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
    trig = "types",
},
{
    t"type ",
    i(1, "Name"),
    t{ " struct {", "" },
    t"\t",
    i(0),
    t{ "", "}" },
})

local fori = snip({
    trig = "fori",
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
    trig = "forr",
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

table.insert(snippets, fn)
table.insert(snippets, fn_struct)
table.insert(snippets, fn_test)
table.insert(snippets, ifs)
table.insert(snippets, if_test)
table.insert(snippets, typei)
table.insert(snippets, types)
table.insert(snippets, fori)
table.insert(snippets, forr)

return snippets
