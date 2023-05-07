local ls = require("luasnip")

local snip = ls.snippet

local t = ls.text_node
local i = ls.insert_node

local snippets = {}

-- std::cout << "" << std::endl;
local cout = snip({
    trig = "cout",
}, {
    t{"std::cout << \""}, i(1) , t{"\" << std::endl;"}
})

-- for (const auto elem& : container) {
--     1
-- }
local for_range = snip({
    trig = "forr",
}, {
    t{"for (const auto elem& : container) {"},
    t{"", "\t"}, i(1),
    t{"", "}"}
})

-- for (int i = 0; i < n; i++) {
--     1
-- }
local for_init = snip({
    trig = "fori",
}, {
    t{"for (int i = 0; i < n; i++) {"},
    t{"", "\t"}, i(1),
    t{"", "}"}
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

-- while (1) {
--     2
-- }
local while_statement = snip({
    trig = "while",
}, {
    t{"while ("}, i(1), t{") {"},
    t{"", "\t"}, i(2),
    t{"", "}"}
})

-- struct 1 {
--     2
-- };
local struct = snip({
    trig = "str",
}, {
    t{"struct "}, i(1), t{" {"},
    t{"", "\t"}, i(2),
    t{"", "};"}
})

table.insert(snippets, cout)
table.insert(snippets, for_range)
table.insert(snippets, for_init)
table.insert(snippets, if_statement)
table.insert(snippets, while_statement)
table.insert(snippets, struct)

return snippets
