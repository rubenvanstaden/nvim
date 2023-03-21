-- https://sbulav.github.io/vim/neovim-setting-up-luasnip/

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

local add_general = snip({
    trig = "ageneral",
    name = "General",
    dscr = "Entry to ledger journal for checking account"
},
{
    f(date, {}), t({" * "}), i(1, "<name>"),
})

local add_coop = snip({
    trig = "acoop",
    name = "Co-op",
    dscr = "Entry to ledger journal for checking account"
},
{
    f(date, {}), t({" * "}), t({"Co-Op"}),
    t({"", "    Liability:Person:Jason Zhan"}),
})

local add_tt = snip({
    trig = "att",
    name = "T&T",
    dscr = "Entry to ledger journal for checking account"
},
{
    f(date, {}), t({" * "}), t({"T&T"}),
    t({"", "    Liability:Person:Jason Zhan"}),
})

local add_costco = snip({
    trig = "acostco",
    name = "Costco",
    dscr = "Entry to ledger journal for checking account"
},
{
    f(date, {}), t({" * "}), t({"Costco"}),
    t({"", "    Liability:Person:Jason Zhan"}),
})

local add_superstore = snip({
    trig = "ass",
    name = "Superstore",
    dscr = "Entry to ledger journal for checking account"
},
{
    f(date, {}), t({" * "}), t({"Superstore"}),
    t({"", "    Liability:Person:Jason Zhan"}),
})

local grocery = snip({
    trig = "egrocery",
    name = "Grocery",
    dscr = "Add grocery expense"
},
{
    t({"Expense:Food:Grocery:"}), i(1, "Produce"), t("    "), i(2, "Value"), t({" CAD"}),
})

local snack = snip({
    trig = "esnack",
    name = "Snack",
    dscr = "Add snack expense"
},
{
    t({"Expense:Food:Snack:"}), i(1, "Produce"), t("    "), i(2, "Value"), t({" CAD"}),
})

local coffee = snip({
    trig = "ecoffee",
    name = "Coffee",
    dscr = "Add coffee expense"
},
{
    t({"Expense:Entertainment:Coffee  "}), i(1, "Value"), t({" CAD"}),
})

local dining = snip({
    trig = "edining",
    name = "Dining",
    dscr = "Add dining expense"
},
{
    t({"Expense:Entertainment:Dining  "}), i(1, "Value"), t({" CAD"}),
})

local joint_checking = snip({
    trig = "ajoint",
    name = "JointChecking",
    dscr = "Add tangerine joint checking account"
},
{
    t({"Assets:Tangerine:Joint:Checking"}),
})

local tpd = snip({
    trig = "atpd",
    name = "TemporaryPriceDiscount",
    dscr = "Costco temporary price discount"
},
{
    t({"Assets:Discount:Tpd"}),
})

local amex = snip({
    trig = "lamex",
    name = "American Express",
    dscr = "Entry to ledger journal for checking account"
},
{
    f(date, {}), t({" * Transfer"}),
    t({"", "    Liabilities:Amex:Visa  "}), i(1, "Value"), t({ "CAD"}),
    t({"", "    Assets:Tangerine:Joint:Checking"}),
})

local fruit = snip({
    trig = "efruit",
    name = "Fruit",
    dscr = "Add fruit expense"
},
{
    t({"Expense:Food:Fruit:"}), i(1, "Produce"), t("    "), i(2, "Value"), t({" CAD"}),
})

local vegetable = snip({
    trig = "evegetable",
    name = "Vegetable",
    dscr = "Add vegetable expense"
},
{
    t({"Expense:Food:Vegetable:"}), i(1, "Produce"), t("    "), i(2, "Value"), t({" CAD"}),
})

local meat = snip({
    trig = "emeat",
    name = "Meat",
    dscr = "Add meat expense"
},
{
    t({"Expense:Food:Meat:"}), i(1, "Produce"), t("    "), i(2, "Value"), t({" CAD"}),
})

local diary = snip({
    trig = "ediary",
    name = "Diary",
    dscr = "Add diary expense"
},
{
    t({"Expense:Food:Diary:"}), i(1, "Produce"), t("    "), i(2, "Value"), t({" CAD"}),
})

local home = snip({
    trig = "ehome",
    name = "Home",
    dscr = "Add home expense"
},
{
    t({"Expense:Food:Home:"}), i(1, "Produce"), t("    "), i(2, "Value"), t({" CAD"}),
})

local seafood = snip({
    trig = "eseafood",
    name = "Seafood",
    dscr = "Add seafood expense"
},
{
    t({"Expense:Food:Seafood:"}), i(1, "Produce"), t("    "), i(2, "Value"), t({" CAD"}),
})

local pharmacy = snip({
    trig = "ephar",
    name = "Pharmacy",
    dscr = "Add pharmacy expense"
},
{
    t({"Expense:Medical:Pharmacy:"}), i(1, "Produce"), t("    "), i(2, "Value"), t({" CAD"}),
})

-- Add entry
table.insert(snippets, add_general)
table.insert(snippets, add_coop)
table.insert(snippets, add_tt)
table.insert(snippets, add_costco)
table.insert(snippets, add_superstore)

-- Expense
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
table.insert(snippets, tpd)
table.insert(snippets, pharmacy)

return snippets
