local ls = require("luasnip")

local snip = ls.snippet

local f = ls.function_node
local t = ls.text_node
local i = ls.insert_node

local snippets = {}

local link = snip({
    trig = "link",
    name = "markdown_link",
    dscr = "Create markdown link [txt](url)",
}, {
    t"[",
    i(1),
    t"](",
    f(function(_, s)
        return s.env.TM_SELECTED_TEXT[1] or {}
    end, {}),
    t")",
    i(0),
})

local codewrap = snip({
    trig = "codewrap",
    name = "markdown_code_wrap",
    dscr = "Create markdown code block from existing text",
}, {
    t"``` ",
    i(1, "Language"),
    t{ "", "" },
    f(function(_, s)
        local tmp = {}
        tmp = s.env.TM_SELECTED_TEXT
        tmp[0] = nil
        return tmp or {}
    end, {}),
    t{ "", "```", "" },
    i(0),
})

table.insert(snippets, link)
table.insert(snippets, codewrap)

return snippets
