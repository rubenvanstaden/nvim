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

---------------------------------------------------------------------------------------------------
-- Liability
---------------------------------------------------------------------------------------------------

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
-- Asset
---------------------------------------------------------------------------------------------------

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

---------------------------------------------------------------------------------------------------
-- Expenses
---------------------------------------------------------------------------------------------------

local grocery = snip({
    trig = "efgrocery",
    name = "Grocery",
    dscr = "Add grocery expense"
},
{
    t({"Expense:Food:Grocery:"}), i(1, "Produce"), t("    "), i(2, "Value"), t({" CAD"}),
})

local rice = snip({
    trig = "efrice",
    name = "Rice",
    dscr = "Add rice grocery expense"
},
{
    t({"Expense:Food:Grocery:Rice"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local snack = snip({
    trig = "efsnack",
    name = "Snack",
    dscr = "Add snack expense"
},
{
    t({"Expense:Food:Snack:"}), i(1, "Produce"), t("    "), i(2, "Value"), t({" CAD"}),
})

local coffee = snip({
    trig = "efcoffee",
    name = "Coffee",
    dscr = "Add coffee expense"
},
{
    t({"Expense:Food:Coffee  "}), i(1, "Value"), t({" CAD"}),
})

---------------------------------------------------------------------------------------------------
-- Fruit
---------------------------------------------------------------------------------------------------

local apple = snip({
    trig = "effapple",
    name = "Apple",
    dscr = "Add apple expense"
},
{
    t({"Expense:Food:Fruit:Apple"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local pinapple = snip({
    trig = "effpinapple",
    name = "Pinapple",
    dscr = "Add pinapple expense"
},
{
    t({"Expense:Food:Fruit:Pinapple"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local orange = snip({
    trig = "efforange",
    name = "Orange",
    dscr = "Add orange expense"
},
{
    t({"Expense:Food:Fruit:Orange"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local grape = snip({
    trig = "effgrape",
    name = "Grape",
    dscr = "Add grape expense"
},
{
    t({"Expense:Food:Fruit:Grape"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local pear = snip({
    trig = "effpear",
    name = "Pear",
    dscr = "Add pear expense"
},
{
    t({"Expense:Food:Fruit:Pear"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local banana = snip({
    trig = "effbanana",
    name = "Banana",
    dscr = "Add banana expense"
},
{
    t({"Expense:Food:Fruit:Banana"}), t("    "), i(1, "Value"), t({" CAD"}),
})

---------------------------------------------------------------------------------------------------
-- Vegetable
---------------------------------------------------------------------------------------------------

local carrot_orange = snip({
    trig = "efvcorange",
    name = "Carrot Orange",
    dscr = "Add orange carrot vegetable expense"
},
{
    t({"Expense:Food:Vegetable:Carrot Orange"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local carrot_white = snip({
    trig = "efvcwhite",
    name = "Carrot White",
    dscr = "Add white carrot vegetable expense"
},
{
    t({"Expense:Food:Vegetable:Carrot White"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local onion_green = snip({
    trig = "efvogreen",
    name = "Onion Green",
    dscr = "Add green onion vegetable expense"
},
{
    t({"Expense:Food:Vegetable:Onion Green"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local onion_yellow = snip({
    trig = "efvoyellow",
    name = "Onion Yellow",
    dscr = "Add yellow onion vegetable expense"
},
{
    t({"Expense:Food:Vegetable:Onion Yellow"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local pepper = snip({
    trig = "efvpepper",
    name = "Pepper",
    dscr = "Add pepper vegetable expense"
},
{
    t({"Expense:Food:Vegetable:Pepper"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local potato_sweet = snip({
    trig = "efvpotatosweet",
    name = "Sweet Potato",
    dscr = "Add sweet potato vegetable expense"
},
{
    t({"Expense:Food:Vegetable:Potato Sweet"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local ginger = snip({
    trig = "efvginger",
    name = "Ginger",
    dscr = "Add ginger vegetable expense"
},
{
    t({"Expense:Food:Vegetable:Ginger"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local lettuce = snip({
    trig = "efvlettuce",
    name = "Lettuce",
    dscr = "Add lettuce vegetable expense"
},
{
    t({"Expense:Food:Vegetable:Lettuce"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local spinach = snip({
    trig = "efvspinach",
    name = "Spinach",
    dscr = "Add spinach vegetable expense"
},
{
    t({"Expense:Food:Vegetable:Spinach"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local tomato = snip({
    trig = "efvtomato",
    name = "Tomato",
    dscr = "Add tomato vegetable expense"
},
{
    t({"Expense:Food:Vegetable:Tomato"}), t("    "), i(1, "Value"), t({" CAD"}),
})

---------------------------------------------------------------------------------------------------
-- Meat
---------------------------------------------------------------------------------------------------

local beef = snip({
    trig = "efmbeef",
    name = "Beef",
    dscr = "Add beef expense"
},
{
    t({"Expense:Food:Meat:Beef"}), i(1, "Produce"), t("    "), i(2, "Value"), t({" CAD"}),
})

local chicken = snip({
    trig = "efmchicken",
    name = "Chicken",
    dscr = "Add chicken expense"
},
{
    t({"Expense:Food:Meat:Chicken"}), i(1, "Produce"), t("    "), i(2, "Value"), t({" CAD"}),
})

local pork = snip({
    trig = "efmpork",
    name = "Port",
    dscr = "Add port expense"
},
{
    t({"Expense:Food:Meat:Pork"}), i(1, "Produce"), t("    "), i(2, "Value"), t({" CAD"}),
})

---------------------------------------------------------------------------------------------------
-- Diary
---------------------------------------------------------------------------------------------------

local diary = snip({
    trig = "efdiary",
    name = "Diary",
    dscr = "Add diary expense"
},
{
    t({"Expense:Food:Diary:"}), i(1, "Produce"), t("    "), i(2, "Value"), t({" CAD"}),
})

local milk = snip({
    trig = "efdmilk",
    name = "Milk",
    dscr = "Add milk as a diary expense"
},
{
    t({"Expense:Food:Diary:Milk"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local yogurt = snip({
    trig = "efdyogurt",
    name = "Milk",
    dscr = "Add yogurt as a diary expense"
},
{
    t({"Expense:Food:Diary:Yogurt"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local cheese = snip({
    trig = "efdcheese",
    name = "Cheese",
    dscr = "Add cheese as a diary expense"
},
{
    t({"Expense:Food:Diary:Cheese"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local home = snip({
    trig = "ehome",
    name = "Home",
    dscr = "Add home expense"
},
{
    t({"Expense:Home:"}), i(1, "Produce"), t("    "), i(2, "Value"), t({" CAD"}),
})

---------------------------------------------------------------------------------------------------
-- Seafood
---------------------------------------------------------------------------------------------------

local seafood = snip({
    trig = "efseafood",
    name = "Seafood",
    dscr = "Add seafood expense"
},
{
    t({"Expense:Food:Seafood:"}), i(1, "Produce"), t("    "), i(2, "Value"), t({" CAD"}),
})

---------------------------------------------------------------------------------------------------
-- Spice
---------------------------------------------------------------------------------------------------

local spice = snip({
    trig = "efspice",
    name = "Spice",
    dscr = "Add spice expense"
},
{
    t({"Expense:Food:Spice:"}), i(1, "Produce"), t("    "), i(2, "Value"), t({" CAD"}),
})

---------------------------------------------------------------------------------------------------
-- Sauce
---------------------------------------------------------------------------------------------------

local sauce = snip({
    trig = "efsauce",
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

local takeout = snip({
    trig = "edtakeout",
    name = "Takeout",
    dscr = "Add takeout expense"
},
{
    t({"Expense:Dining:Takeout"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local resto = snip({
    trig = "edresto",
    name = "Restaurant",
    dscr = "Add restaurant expense"
},
{
    t({"Expense:Dining:Resto"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local uber_eats = snip({
    trig = "eduber",
    name = "Uber Eats",
    dscr = "Add Uber Eats expense"
},
{
    t({"Expense:Dining:Uber"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local dining_coffee = snip({
    trig = "edcoffee",
    name = "Coffee",
    dscr = "Add dining coffee expense"
},
{
    t({"Expense:Dining:Coffee"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local bubble_tea = snip({
    trig = "edbubbletea",
    name = "Bubble Tea",
    dscr = "Add dining bubble tea expense"
},
{
    t({"Expense:Dining:Bubble Tea"}), t("    "), i(1, "Value"), t({" CAD"}),
})

---------------------------------------------------------------------------------------------------
-- Transport
---------------------------------------------------------------------------------------------------

local metro = snip({
    trig = "etmetro",
    name = "Metro",
    dscr = "Add metro transport expense"
},
{
    t({"Expense:Transport:Metro"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local uber_trip = snip({
    trig = "etuber",
    name = "Uber Trip",
    dscr = "Add Uber transport expense"
},
{
    t({"Expense:Transport:Uber"}), t("    "), i(1, "Value"), t({" CAD"}),
})

---------------------------------------------------------------------------------------------------
-- Subscription
---------------------------------------------------------------------------------------------------

local lifespan = snip({
    trig = "eslifespan",
    name = "Lifespan",
    dscr = "Add lifespan supplement expense"
},
{
    t({"Expense:Supplement:Lifespan"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local protein = snip({
    trig = "esprotein",
    name = "Protein",
    dscr = "Add protein supplement expense"
},
{
    t({"Expense:Supplement:Protein"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local omega = snip({
    trig = "esomega",
    name = "Omega",
    dscr = "Add omega supplement expense"
},
{
    t({"Expense:Supplement:Omega"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local vitamins = snip({
    trig = "esvitamins",
    name = "Vitamins",
    dscr = "Add vitamins supplement expense"
},
{
    t({"Expense:Supplement:Vitamins"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local subscription = snip({
    trig = "esubscription",
    name = "Subscription",
    dscr = "Add subscription expense"
},
{
    t({"Expense:Subscription"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local lululemon = snip({
    trig = "eflululemon",
    name = "Lululemon",
    dscr = "Add lululemon expense"
},
{
    t({"Expense:Fashion:Lululemon"}), t("    "), i(1, "Value"), t({" CAD"}),
})

-- Add entry
table.insert(snippets, add_general)
table.insert(snippets, add_coop)
table.insert(snippets, add_tt)
table.insert(snippets, add_costco)
table.insert(snippets, add_superstore)

-- Fruit
table.insert(snippets, apple)
table.insert(snippets, banana)
table.insert(snippets, pinapple)
table.insert(snippets, orange)
table.insert(snippets, grape)
table.insert(snippets, pear)

-- Vegetable
table.insert(snippets, carrot_white)
table.insert(snippets, carrot_orange)
table.insert(snippets, onion_green)
table.insert(snippets, onion_yellow)
table.insert(snippets, potato_sweet)
table.insert(snippets, pepper)
table.insert(snippets, ginger)
table.insert(snippets, lettuce)
table.insert(snippets, spinach)
table.insert(snippets, tomato)

-- Diary
table.insert(snippets, milk)
table.insert(snippets, yogurt)
table.insert(snippets, cheese)

-- Dining
table.insert(snippets, resto)
table.insert(snippets, takeout)
table.insert(snippets, uber_eats)
table.insert(snippets, dining_coffee)
table.insert(snippets, bubble_tea)

-- Transport
table.insert(snippets, metro)
table.insert(snippets, uber_trip)

-- Supplement
table.insert(snippets, lifespan)
table.insert(snippets, protein)
table.insert(snippets, omega)
table.insert(snippets, vitamins)

-- Expense
table.insert(snippets, subscription)
table.insert(snippets, lululemon)

-- Grocery
table.insert(snippets, rice)

-- Expense
table.insert(snippets, joint_checking)
table.insert(snippets, amex)
table.insert(snippets, snack)
table.insert(snippets, coffee)
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
