local ls = require("luasnip")

local snip = ls.snippet

local t = ls.text_node
local i = ls.insert_node

local snippets = {}

-- > 1 #quote
local quote = snip({
    trig = "quote",
    dscr = "Create a daily quote",
}, {
    t{"> "}, i(1), t{" #quote"},
})

-- [1](2)
local link = snip({
    trig = "link",
    dscr = "Create markdown link [txt](url)",
}, {
    t{"["}, i(1), t{"]("}, i(2), t{")"},
})

-- ```1
-- ```
local code = snip({
    trig = "code",
    dscr = "Create markdown code block from existing text",
}, {
    t{"```"}, i(1),
    t{"", "```"}
})

table.insert(snippets, quote)
table.insert(snippets, link)
table.insert(snippets, code)

return snippets
