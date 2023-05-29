local ls = require("luasnip")

local snip = ls.snippet
local t = ls.text_node
local i = ls.insert_node

local snippets = {}

-- if [[ 1 ]]; then
-- fi
local if_statement = snip({
    trig = "if",
}, {
    t{"if [[ "}, i(1), t{" ]]; then"},
    t{"", "fi"}
})

table.insert(snippets, if_statement)

return snippets
