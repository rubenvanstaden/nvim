local ls = require("luasnip")

local snip = ls.snippet

local t = ls.text_node
local i = ls.insert_node

local snippets = {}

-- printf("%d\n", 1)
local print_integer = snip({
    trig = "printi",
}, {
    t{"printf(\"%d\\n\", "}, i(1), t{")"},
})

-- #include <1>
local include_external = snip({
    trig = "inc",
}, {
    t{"#include <"}, i(1), t{">"},
})

-- #include "1"
local include_internal = snip({
    trig = "inci",
}, {
    t{"#include \""}, i(1), t{"\""},
})

-- typedef struct 1 {
--     2
-- } 3;
local struct_typedef = snip({
    trig = "st",
}, {
    t{"typedef struct {"},
    t{"", "\t"}, i(1),
    t{"", "} "}, i(2), t{";"}
})

-- if (1) {
--     2
-- }
local if_statement = snip({
    trig = "if",
}, {
    t{"if ("}, i(1), t{") {"},
    t{"", "\t"}, i(2),
    t{"", "}"}
})

-- for (i = 0; i < n; i++) {
--     1
-- }
local for_statement = snip({
    trig = "fori",
}, {
    t{"for (i = 0; i < n; i++) {"},
    t{"", "\t"}, i(1),
    t{"", "}"}
})

table.insert(snippets, print_integer)
table.insert(snippets, include_external)
table.insert(snippets, include_internal)
table.insert(snippets, struct_typedef)
table.insert(snippets, if_statement)
table.insert(snippets, for_statement)

return snippets
