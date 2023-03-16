local ls = require("luasnip")

local snip = ls.snippet

local f = ls.function_node
local t = ls.text_node
local i = ls.insert_node

local snippets = {}

local date = function()
    return { os.date "%Y/%m/%d" }
end

local filename = function()
    return { vim.fn.expand "%:p" }
end

-- Make sure to not pass an invalid command, as io.popen() may write over nvim-text.
local function bash(_, _, command)
    local file = io.popen(command, "r")
    local res = {}
    for line in file:lines() do
        table.insert(res, line)
    end
    return res
end

local mdata = snip({
    trig = "date",
    name = "Date",
    dscr = "Date in the form of YYYY/MM/DD",
}, {
    f(date, {}),
})

local pwd = snip({
    trig = "pwd",
    name = "PWD",
    dscr = "Path to current working directory",
}, {
    f(bash, {}, { user_args = { "pwd" } }),
})

local mfilename = snip({
    trig = "filename",
    name = "Filename",
    dscr = "Absolute path to file",
}, {
    f(filename, {}),
})

local signature = snip({
    trig = "signature",
    name = "Signature",
    dscr = "Name and Surname",
}, {
    t"Ruben van Staden",
    i(0),
})

table.insert(snippets, mdata)
table.insert(snippets, pwd)
table.insert(snippets, mfilename)
table.insert(snippets, signature)

return snippets
