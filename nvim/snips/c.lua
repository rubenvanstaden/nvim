local ls = require("luasnip")

local snip = ls.snippet

local t = ls.text_node
local i = ls.insert_node

local snippets = {}

-- #include <1>
local include_external = snip({
    trig = "inc",
}, {
    t"#include <", i(1), t{">"},
})

-- #include "1"
local include_internal = snip({
    trig = "inci",
}, {
    t"#include \"", i(1), t{"\""},
})

-- typedef struct 1 {
--     2
-- } 3;
local struct_typedef = snip({
    trig = "st",
}, {
    t"typedef struct ", i(1), t{" {"},
    t{"", "\t"}, i(2),
    t{"", "} "}, i(3), t{";"}
})

table.insert(snippets, include_external)
table.insert(snippets, include_internal)
table.insert(snippets, struct_typedef)

return snippets

