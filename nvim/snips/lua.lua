local ls = require("luasnip")

local snip = ls.snippet
local t = ls.text_node
local i = ls.insert_node

local snippets = {}

local shebang = snip("shebang", {
    t{ "#!/usr/bin/lua", "", "" },
    i(0),
})

local require = snip("myreq", {
    t"require('",
    i(1, "Module-name"),
    t"')",
    i(0),
})

local func = snip("myfunc", {
    t"function(",
    i(1, "Arguments"),
    t{ ")", "\t" },
    i(2),
    t{ "", "end", "" },
    i(0),
})

local forp = snip("myforp", {
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

local fori = snip("myfori", {
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

local ifs = snip("myif", {
    t"if ",
    i(1),
    t{ " then", "\t" },
    i(2),
    t{ "", "end", "" },
    i(0),
})

local m = snip("myM", {
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
