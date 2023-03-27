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

---------------------------------------------------------------------------------------------------
-- Fruit
---------------------------------------------------------------------------------------------------

local apple = snip({
    trig = "fapple",
    name = "Apple",
    dscr = "Add apple expense"
},
{
    t({"Expense:Food:Fruit:Apple"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local pinapple = snip({
    trig = "fpinapple",
    name = "Pinapple",
    dscr = "Add pinapple expense"
},
{
    t({"Expense:Food:Fruit:Pinapple"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local orange = snip({
    trig = "forange",
    name = "Orange",
    dscr = "Add orange expense"
},
{
    t({"Expense:Food:Fruit:Orange"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local grape = snip({
    trig = "fgrape",
    name = "Grape",
    dscr = "Add grape expense"
},
{
    t({"Expense:Food:Fruit:Grape"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local pear = snip({
    trig = "fpear",
    name = "Pear",
    dscr = "Add pear expense"
},
{
    t({"Expense:Food:Fruit:Pear"}), t("    "), i(1, "Value"), t({" CAD"}),
})

---------------------------------------------------------------------------------------------------
-- Vegetable
---------------------------------------------------------------------------------------------------

local carrot_oragne = snip({
    trig = "vcorange",
    name = "Carrot Orange",
    dscr = "Add orange carrot vegetable expense"
},
{
    t({"Expense:Food:Vegetable:Carrot Orange"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local carrot_white = snip({
    trig = "vcwhite",
    name = "Carrot White",
    dscr = "Add white carrot vegetable expense"
},
{
    t({"Expense:Food:Vegetable:Carrot White"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local onion_green = snip({
    trig = "vogreen",
    name = "Onion Green",
    dscr = "Add green onion vegetable expense"
},
{
    t({"Expense:Food:Vegetable:Onion Green"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local onion_yellow = snip({
    trig = "voyellow",
    name = "Onion Yellow",
    dscr = "Add yellow onion vegetable expense"
},
{
    t({"Expense:Food:Vegetable:Onion Yellow"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local pepper = snip({
    trig = "vpepper",
    name = "Pepper",
    dscr = "Add pepper vegetable expense"
},
{
    t({"Expense:Food:Vegetable:Pepper"}), t("    "), i(1, "Value"), t({" CAD"}),
})

---------------------------------------------------------------------------------------------------
-- Meat
---------------------------------------------------------------------------------------------------

local beef = snip({
    trig = "ebeef",
    name = "Beef",
    dscr = "Add beef expense"
},
{
    t({"Expense:Food:Meat:Beef"}), i(1, "Produce"), t("    "), i(2, "Value"), t({" CAD"}),
})

local chicken = snip({
    trig = "echicken",
    name = "Chicken",
    dscr = "Add chicken expense"
},
{
    t({"Expense:Food:Meat:Chicken"}), i(1, "Produce"), t("    "), i(2, "Value"), t({" CAD"}),
})

local pork = snip({
    trig = "epork",
    name = "Port",
    dscr = "Add port expense"
},
{
    t({"Expense:Food:Meat:Pork"}), i(1, "Produce"), t("    "), i(2, "Value"), t({" CAD"}),
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
    t({"Expense:Home:"}), i(1, "Produce"), t("    "), i(2, "Value"), t({" CAD"}),
})

local seafood = snip({
    trig = "eseafood",
    name = "Seafood",
    dscr = "Add seafood expense"
},
{
    t({"Expense:Food:Seafood:"}), i(1, "Produce"), t("    "), i(2, "Value"), t({" CAD"}),
})

local spice = snip({
    trig = "espice",
    name = "Spice",
    dscr = "Add spice expense"
},
{
    t({"Expense:Food:Spice:"}), i(1, "Produce"), t("    "), i(2, "Value"), t({" CAD"}),
})

local sauce = snip({
    trig = "esauce",
    name = "Sauce",
    dscr = "Add sauce expense"
},
{
    t({"Expense:Food:Sauce:"}), i(1, "Produce"), t("    "), i(2, "Value"), t({" CAD"}),
})

local pharmacy = snip({
    trig = "ephar",
    name = "Pharmacy",
    dscr = "Add pharmacy expense"
},
{
    t({"Expense:Medical:Pharmacy:"}), i(1, "Produce"), t("    "), i(2, "Value"), t({" CAD"}),
})

---------------------------------------------------------------------------------------------------
-- Dining
---------------------------------------------------------------------------------------------------

local resto = snip({
    trig = "dresto",
    name = "Restaurant",
    dscr = "Add restaurant expense"
},
{
    t({"Expense:Dining:Resto"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local uber_eats = snip({
    trig = "duber",
    name = "Uber Eats",
    dscr = "Add Uber Eats expense"
},
{
    t({"Expense:Dining:Uber"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local dining_coffee = snip({
    trig = "dcoffee",
    name = "Coffee",
    dscr = "Add dining coffee expense"
},
{
    t({"Expense:Dining:Coffee"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local bubble_tea = snip({
    trig = "dbubbletea",
    name = "Bubble Tea",
    dscr = "Add dining bubble tea expense"
},
{
    t({"Expense:Dining:Bubble Tea"}), t("    "), i(1, "Value"), t({" CAD"}),
})

---------------------------------------------------------------------------------------------------
-- Subscription
---------------------------------------------------------------------------------------------------

local roam = snip({
    trig = "sroam",
    name = "Roam Research",
    dscr = "Add roam research subscription expense"
},
{
    t({"Expense:Subscription:Roam"}), t("    "), i(1, "Value"), t({" CAD"}),
})

-- Add entry
table.insert(snippets, add_general)
table.insert(snippets, add_coop)
table.insert(snippets, add_tt)
table.insert(snippets, add_costco)
table.insert(snippets, add_superstore)

-- Fruit
table.insert(snippets, apple)
table.insert(snippets, pinapple)
table.insert(snippets, orange)
table.insert(snippets, grape)
table.insert(snippets, pear)

-- Vegetable
table.insert(snippets, carrot_white)
table.insert(snippets, carrot_oragne)
table.insert(snippets, onion_green)
table.insert(snippets, onion_yellow)
table.insert(snippets, pepper)

-- Dining
table.insert(snippets, resto)
table.insert(snippets, uber_eats)
table.insert(snippets, dining_coffee)
table.insert(snippets, bubble_tea)

-- Subscription
table.insert(snippets, roam)

-- Expense
table.insert(snippets, joint_checking)
table.insert(snippets, amex)
table.insert(snippets, snack)
table.insert(snippets, coffee)
table.insert(snippets, dining)
table.insert(snippets, grocery)
table.insert(snippets, diary)
table.insert(snippets, home)
table.insert(snippets, seafood)
table.insert(snippets, tpd)
table.insert(snippets, pharmacy)
table.insert(snippets, spice)
table.insert(snippets, sauce)
table.insert(snippets, beef)
table.insert(snippets, chicken)
table.insert(snippets, pork)

return snippets
