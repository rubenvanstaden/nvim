local ls = require("luasnip")

local snip = ls.snippet

local t = ls.text_node
local i = ls.insert_node

local snippets = {}

-- pub mod 1;
local mod = snip({
    trig = "mod",
},
{
    t{"pub mod "}, i(1), t{";"},
})

-- type 1 = 2;
local types = snip({
    trig = "tp",
},
{
    t{"type "}, i(1), t{" = "}, i(2), t{";"},
})

-- let 1 = 2;
local let = snip({
    trig = "ll",
},
{
    t{"let "}, i(1), t{" = "}, i(2), t{";"},
})

-- let 1 = 2;
local let_mut = snip({
    trig = "lm",
},
{
    t{"let mut "}, i(1), t{" = "}, i(2), t{";"},
})

-- pub fn 1(2) {
--     3
-- }
local pub_fn = snip({
    trig = "pf",
},
{
    t{"pub fn "}, i(1), t{"("}, i(2), t{")"}, t{" {"},
    t{"", "\t"}, i(3),
    t{"", "}"},
})

-- pub fn 1(2) -> 3 {
--     4
-- }
local pub_fn_result = snip({
    trig = "pfr",
},
{
    t{"pub fn "}, i(1), t{"("}, i(2), t{")"}, t{" -> "}, i(3), t{" {"},
    t{"", "\t"}, i(4),
    t{"", "}"},
})


-- match 1 {
--     Some(2) => 3,
--     None => 4,
-- }
local match_option = snip({
    trig = "mo",
},
{
    t{"match "}, i(1), t{" {"},
    t{"", "\t"}, t{"None => "}, i(2),
    t{"", "\t"}, t{"Some("}, i(3), t{") => "}, i(4),
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

-- struct 1 {
--     2: 3
-- }
local struct = snip({
    trig = "st",
},
{
    t{"struct "}, i(1), t{" {"},
    t{"", "\t"}, i(2), t{":"}, i(3),
    t{"", "}"},
})

table.insert(snippets, mod)
table.insert(snippets, types)
table.insert(snippets, let)
table.insert(snippets, let_mut)
table.insert(snippets, match_option)
table.insert(snippets, match_ordering)
table.insert(snippets, fn_test)
table.insert(snippets, pub_fn)
table.insert(snippets, pub_fn_result)
table.insert(snippets, struct)

return snippets
