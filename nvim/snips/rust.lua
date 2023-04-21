local ls = require("luasnip")

local snip = ls.snippet

local t = ls.text_node
local i = ls.insert_node

local snippets = {}

-- match 1 {
--     Some(2) => 3,
--     None => 4,
-- }
local match_option = snip({
    trig = "mo",
},
{
    t{"match "}, i(1), t{" {"},
    t{"", "\t"}, t{"Some("}, i(2), t{") => "}, i(3),
    t{"", "\t"}, t{"None => "}, i(4),
    t{"", "}"},
})

-- match 1 {
--     Ordering::Equal => {
--         2
--     }
--     Ordering::Greater => {
--         3
--     }
--     Ordering::Less => {
--         4
--     }
-- }
local match_ordering = snip({
    trig = "mr",
},
{
    t{"match "}, i(1), t{" {"},

    t{"", "\t"}, t{"Ordering::Equal => {"},
    t{"", "\t\t"}, i(2),
    t{"", "\t}"},

    t{"", "\t"}, t{"Ordering::Greater => {"},
    t{"", "\t\t"}, i(3),
    t{"", "\t}"},

    t{"", "\t"}, t{"Ordering::Less => {"},
    t{"", "\t\t"}, i(4),
    t{"", "\t}"},

    t{"", "}"},
})


-- #[test]
-- fn test() {
--     assert_eq!(a1, false);
-- }
local fn_test = snip({
    trig = "ft",
},
{
    t{"#[test]"},
    t{"", "fn test() {"},
    t{"", "\t"}, i(1),
    t{"", "\t"}, t{"assert_eq!("}, i(2), t{")"},
    t{"", "}"},
})

table.insert(snippets, match_option)
table.insert(snippets, match_ordering)
table.insert(snippets, fn_test)

return snippets
