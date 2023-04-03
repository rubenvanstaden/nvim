local ls = require("luasnip")

local snip = ls.snippet
local t = ls.text_node
local i = ls.insert_node

local snippets = {}

local shebang = snip("shebang", {
    t{ "#!/usr/bin/lua", "", "" },
    i(0),
})

local require = snip("req", {
    t"require('",
    i(1, "Module-name"),
    t"')",
    i(0),
})

local func = snip("fn", {
    t"function(",
    i(1, "Arguments"),
    t{ ")", "\t" },
    i(2),
    t{ "", "end", "" },
    i(0),
})

local forp = snip("forp", {
    t"for ",
    i(1, "k"),
    t", ",
    i(2, "v"),
    t" in pairs(",
    i(3, "table"),
    t{ ") do", "\t" },
    i(4),
    t{ "", "end", "" },
    i(0),
})

local fori = snip("fori", {
    t"for ",
    i(1, "k"),
    t", ",
    i(2, "v"),
    t" in ipairs(",
    i(3, "table"),
    t{ ") do", "\t" },
    i(4),
    t{ "", "end", "" },
    i(0),
})

local ifs = snip("if", {
    t"if ",
    i(1),
    t{ " then", "\t" },
    i(2),
    t{ "", "end", "" },
    i(0),
})

local m = snip("mod", {
    t{ "local M = {}", "", "" },
    i(0),
    t{ "", "", "return M" },
})

table.insert(snippets, shebang)
table.insert(snippets, require)
table.insert(snippets, func)
table.insert(snippets, forp)
table.insert(snippets, fori)
table.insert(snippets, ifs)
table.insert(snippets, m)

return snippets
