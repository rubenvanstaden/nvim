
-- https://sbulav.github.io/vim/neovim-setting-up-luasnip/
--
local ls = require("luasnip")

local snip = ls.snippet
local f = ls.function_node
local t = ls.text_node
local i = ls.insert_node

local date = function() return {os.date('%Y/%m/%d')} end

ls.config.set_config({
    store_selection_keys = '<c-s>',
})

local snippets = {}

local entry = snip({
    trig = "ec",
    name = "Entry",
    dscr = "Entry to ledger journal for checking account"
},
{
    f(date, {}), t({" * "}), i(1, "<name>"),
    t({"", "    "}), i(2, "To"),
    t({"", "    "}), i(3, "From"),
})

local grocery = snip({
    trig = "grocery",
    name = "Grocery",
    dscr = "Add grocery expense"
},
{
    t({"Expense:Food:Grocery:"}), i(1, "Produce"), t("    "), i(2, "Value"), t({" CAD"}),
})

local snack = snip({
    trig = "snack",
    name = "Snack",
    dscr = "Add snack expense"
},
{
    t({"Expense:Food:Snack  "}), i(1, "Value"), t({" CAD"}),
})

local coffee = snip({
    trig = "coffee",
    name = "Coffee",
    dscr = "Add coffee expense"
},
{
    t({"Expense:Entertainment:Coffee  "}), i(1, "Value"), t({" CAD"}),
})

local dining = snip({
    trig = "dining",
    name = "Dining",
    dscr = "Add dining expense"
},
{
    t({"Expense:Entertainment:Dining  "}), i(1, "Value"), t({" CAD"}),
})

local joint_checking = snip({
    trig = "jc",
    name = "JointChecking",
    dscr = "Add tangerine joint checking account"
},
{
    t({"Assets:Tangerine:Joint:Checking"}),
})

local amex = snip({
    trig = "amex",
    name = "American Express",
    dscr = "Entry to ledger journal for checking account"
},
{
    f(date, {}), t({" * Transfer"}),
    t({"", "    Liabilities:Amex:Visa  "}), i(1, "Value"), t({ "CAD"}),
    t({"", "    Assets:Tangerine:Joint:Checking"}),
})

local fruit = snip({
    trig = "fruit",
    name = "Fruit",
    dscr = "Add fruit expense"
},
{
    t({"Expense:Food:Fruit:"}), i(1, "Produce"), t("    "), i(2, "Value"), t({" CAD"}),
})

local vegetable = snip({
    trig = "vegetable",
    name = "Vegetable",
    dscr = "Add vegetable expense"
},
{
    t({"Expense:Food:Vegetable:"}), i(1, "Produce"), t("    "), i(2, "Value"), t({" CAD"}),
})

local meat = snip({
    trig = "meat",
    name = "Meat",
    dscr = "Add meat expense"
},
{
    t({"Expense:Food:Meat:"}), i(1, "Produce"), t("    "), i(2, "Value"), t({" CAD"}),
})

local diary = snip({
    trig = "diary",
    name = "Diary",
    dscr = "Add diary expense"
},
{
    t({"Expense:Food:Diary:"}), i(1, "Produce"), t("    "), i(2, "Value"), t({" CAD"}),
})

local home = snip({
    trig = "home",
    name = "Home",
    dscr = "Add home expense"
},
{
    t({"Expense:Food:Home:"}), i(1, "Produce"), t("    "), i(2, "Value"), t({" CAD"}),
})

local seafood = snip({
    trig = "seafood",
    name = "Seafood",
    dscr = "Add seafood expense"
},
{
    t({"Expense:Food:Seafood:"}), i(1, "Produce"), t("    "), i(2, "Value"), t({" CAD"}),
})

local produce = snip({
    trig = "produce",
    name = "Produce",
    dscr = "Add produce expense"
},
{
    t({"Expense:Food:Produce:"}), i(1, "Produce"), t("    "), i(2, "Value"), t({" CAD"}),
})

table.insert(snippets, entry)
table.insert(snippets, joint_checking)
table.insert(snippets, amex)
table.insert(snippets, snack)
table.insert(snippets, coffee)
table.insert(snippets, dining)
table.insert(snippets, grocery)
table.insert(snippets, fruit)
table.insert(snippets, vegetable)
table.insert(snippets, meat)
table.insert(snippets, diary)
table.insert(snippets, home)
table.insert(snippets, seafood)
table.insert(snippets, produce)

return snippets
