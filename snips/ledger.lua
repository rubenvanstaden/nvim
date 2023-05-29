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

local payee = snip({
    trig = "payee",
    name = "Payee",
    dscr = "Add payee to journal"
},
{
    f(date, {}), t({" * "}), i(1, "<name>"),
})

local add_coop = snip({
    trig = "coop",
    dscr = "Entry to ledger journal for checking account"
},
{
    f(date, {}), t({" * "}), t({"Co-Op"}),
    t({"", "    Liability:Person:Jason Zhan"}),
})

local add_tt = snip({
    trig = "t&t",
    dscr = "Entry to ledger journal for checking account"
},
{
    f(date, {}), t({" * "}), t({"T&T"}),
    t({"", "    Liability:Person:Jason Zhan"}),
})

local add_costco = snip({
    trig = "costco",
    dscr = "Entry to ledger journal for checking account"
},
{
    f(date, {}), t({" * "}), t({"Costco"}),
    t({"", "    Liability:Person:Jason Zhan"}),
})

local add_superstore = snip({
    trig = "superstore",
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

local entry = snip({
    trig = "entry",
    dscr = "Entry to ledger journal for checking account"
},
{
    f(date, {}), t({" * "}), i(1)
})

local joint_checking = snip({
    trig = "joint",
    name = "JointChecking",
    dscr = "Add tangerine joint checking account"
},
{
    t({"Assets:Tangerine:Joint"}),
})

local amex_cobalt = snip({
    trig = "amex_cobalt",
    dscr = "Add tangerine joint checking account"
},
{
    t({"Liability:Amex:Cobalt"}),
})

local amex_gold = snip({
    trig = "amex_gold",
    dscr = "Add tangerine joint checking account"
},
{
    t({"Liability:Amex:Gold"}),
})

local tpd = snip({
    trig = "tpd",
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
    trig = "grocery",
    name = "Grocery",
    dscr = "Add grocery expense"
},
{
    t({"Expense:Food:Grocery:"}), i(1, "Produce"), t("    "), i(2, "Value"), t({" CAD"}),
})

local rice = snip({
    trig = "rice",
    dscr = "Add rice grocery expense"
},
{
    t({"Expense:Food:Grocery:Rice"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local snack = snip({
    trig = "snack",
    dscr = "Add snack expense"
},
{
    t({"Expense:Food:Snack:"}), i(1, "Produce"), t("    "), i(2, "Value"), t({" CAD"}),
})

local chocolate = snip({
    trig = "chocolate",
    dscr = "Add snack expense"
},
{
    t({"Expense:Food:Snack:Chocolate"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local coffee = snip({
    trig = "coffee",
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
    trig = "apple",
    name = "Apple",
    dscr = "Add apple expense"
},
{
    t({"Expense:Food:Fruit:Apple"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local pinapple = snip({
    trig = "pinapple",
    name = "Pinapple",
    dscr = "Add pinapple expense"
},
{
    t({"Expense:Food:Fruit:Pinapple"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local orange = snip({
    trig = "orange",
    name = "Orange",
    dscr = "Add orange expense"
},
{
    t({"Expense:Food:Fruit:Orange"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local grape = snip({
    trig = "grape",
    dscr = "Add grape expense"
},
{
    t({"Expense:Food:Fruit:Grape"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local jackfruit = snip({
    trig = "jackfuit",
    dscr = "Add grape expense"
},
{
    t({"Expense:Food:Fruit:Jackfruit"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local pear = snip({
    trig = "pear",
    name = "Pear",
    dscr = "Add pear expense"
},
{
    t({"Expense:Food:Fruit:Pear"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local banana = snip({
    trig = "banana",
    dscr = "Add banana expense"
},
{
    t({"Expense:Food:Fruit:Banana"}), t("    "), i(1, "Value"), t({" CAD"}),
})

---------------------------------------------------------------------------------------------------
-- Vegetable
---------------------------------------------------------------------------------------------------

local carrot_orange = snip({
    trig = "carrot_orange",
    dscr = "Add orange carrot vegetable expense"
},
{
    t({"Expense:Food:Vegetable:Carrot Orange"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local carrot_white = snip({
    trig = "carrot_white",
    dscr = "Add white carrot vegetable expense"
},
{
    t({"Expense:Food:Vegetable:Carrot White"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local onion_green = snip({
    trig = "onion_green",
    dscr = "Add green onion vegetable expense"
},
{
    t({"Expense:Food:Vegetable:Onion Green"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local onion_yellow = snip({
    trig = "onion_yellow",
    dscr = "Add yellow onion vegetable expense"
},
{
    t({"Expense:Food:Vegetable:Onion Yellow"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local pepper = snip({
    trig = "pepper",
    dscr = "Add pepper vegetable expense"
},
{
    t({"Expense:Food:Vegetable:Pepper"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local corn = snip({
    trig = "corn",
    dscr = "Add pepper vegetable expense"
},
{
    t({"Expense:Food:Vegetable:Corn"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local potato_sweet = snip({
    trig = "potato_sweet",
    dscr = "Add sweet potato vegetable expense"
},
{
    t({"Expense:Food:Vegetable:Potato Sweet"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local potato_yellow = snip({
    trig = "potato_yellow",
    dscr = "Add yellow potato vegetable expense"
},
{
    t({"Expense:Food:Vegetable:Potato Yellow"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local ginger = snip({
    trig = "ginger",
    dscr = "Add ginger vegetable expense"
},
{
    t({"Expense:Food:Vegetable:Ginger"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local lettuce = snip({
    trig = "lettuce",
    dscr = "Add lettuce vegetable expense"
},
{
    t({"Expense:Food:Vegetable:Lettuce"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local spinach = snip({
    trig = "spinach",
    dscr = "Add spinach vegetable expense"
},
{
    t({"Expense:Food:Vegetable:Spinach"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local tomato = snip({
    trig = "tomato",
    dscr = "Add tomato vegetable expense"
},
{
    t({"Expense:Food:Vegetable:Tomato"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local edamame = snip({
    trig = "edamame",
    dscr = "Add tomato vegetable expense"
},
{
    t({"Expense:Food:Vegetable:Edamame"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local mushroom = snip({
    trig = "mushroom",
    dscr = "Add tomato vegetable expense"
},
{
    t({"Expense:Food:Vegetable:Mushroom"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local asparagus = snip({
    trig = "asparagus",
    dscr = "Add tomato vegetable expense"
},
{
    t({"Expense:Food:Vegetable:Asparagus"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local cucumber = snip({
    trig = "cucumber",
    dscr = "Add tomato vegetable expense"
},
{
    t({"Expense:Food:Vegetable:Cucumber"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local other = snip({
    trig = "other",
    dscr = "Add tomato vegetable expense"
},
{
    t({"Expense:Other"}), t("    "), i(1, "Value"), t({" CAD"}),
})

---------------------------------------------------------------------------------------------------
-- Meat
---------------------------------------------------------------------------------------------------

local beef = snip({
    trig = "beef",
    dscr = "Add beef expense"
},
{
    t({"Expense:Food:Meat:Beef:"}), i(1, "Produce"), t("    "), i(2, "Value"), t({" CAD"}),
})

local chicken = snip({
    trig = "chicken",
    dscr = "Add chicken expense"
},
{
    t({"Expense:Food:Meat:Chicken:"}), i(1, "Produce"), t("    "), i(2, "Value"), t({" CAD"}),
})

local pork = snip({
    trig = "pork",
    dscr = "Add port expense"
},
{
    t({"Expense:Food:Meat:Pork:"}), i(1, "Produce"), t("    "), i(2, "Value"), t({" CAD"}),
})

---------------------------------------------------------------------------------------------------
-- Diary
---------------------------------------------------------------------------------------------------

local dairy = snip({
    trig = "dairy",
    dscr = "Add dairy expense"
},
{
    t({"Expense:Food:Diary:"}), i(1, "Produce"), t("    "), i(2, "Value"), t({" CAD"}),
})

local milk = snip({
    trig = "milk",
    dscr = "Add milk as a dairy expense"
},
{
    t({"Expense:Food:Diary:Milk"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local yogurt = snip({
    trig = "yogurt",
    dscr = "Add yogurt as a dairy expense"
},
{
    t({"Expense:Food:Diary:Yogurt"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local egg = snip({
    trig = "egg",
    dscr = "Add milk as a dairy expense"
},
{
    t({"Expense:Food:Diary:Egg"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local cheese = snip({
    trig = "cheese",
    dscr = "Add cheese as a dairy expense"
},
{
    t({"Expense:Food:Diary:Cheese"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local home = snip({
    trig = "home",
    dscr = "Add home expense"
},
{
    t({"Expense:Home:"}), i(1, "Produce"), t("    "), i(2, "Value"), t({" CAD"}),
})

---------------------------------------------------------------------------------------------------
-- Seafood
---------------------------------------------------------------------------------------------------

local seafood = snip({
    trig = "seafood",
    dscr = "Add seafood expense"
},
{
    t({"Expense:Food:Seafood:"}), i(1, "Produce"), t("    "), i(2, "Value"), t({" CAD"}),
})

---------------------------------------------------------------------------------------------------
-- Spice
---------------------------------------------------------------------------------------------------

local spice = snip({
    trig = "spice",
    dscr = "Add spice expense"
},
{
    t({"Expense:Food:Spice:"}), i(1, "Produce"), t("    "), i(2, "Value"), t({" CAD"}),
})

local fee_gst = snip({
    trig = "fee_gst",
    dscr = "Add sauce expense"
},
{
    t({"Expense:Fee:GST"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local fee_enviro = snip({
    trig = "fee_enviro",
    dscr = "Add sauce expense"
},
{
    t({"Expense:Fee:Enviro"}), t("    "), i(1, "Value"), t({" CAD"}),
})

---------------------------------------------------------------------------------------------------
-- Sauce
---------------------------------------------------------------------------------------------------

local sauce = snip({
    trig = "sauce",
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
    trig = "coffee_dining",
    dscr = "Add dining coffee expense"
},
{
    t({"Expense:Dining:Coffee"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local drinks = snip({
    trig = "drinks",
    dscr = "Add dining coffee expense"
},
{
    t({"Expense:Dining:Drinks"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local bubble_tea = snip({
    trig = "edbubbletea",
    name = "Bubble Tea",
    dscr = "Add dining bubble tea expense"
},
{
    t({"Expense:Dining:Bubble Tea"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local oats = snip({
    trig = "oats",
    dscr = "Add dining bubble tea expense"
},
{
    t({"Expense:Food:Grocery:Oats"}), t("    "), i(1, "Value"), t({" CAD"}),
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

---------------------------------------------------------------------------------------------------
-- Course
---------------------------------------------------------------------------------------------------

local kindle = snip({
    trig = "eckindle",
    name = "Kindle",
    dscr = "Add kindle as a course expense"
},
{
    t({"Expense:Course:Kindle"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local audible = snip({
    trig = "ecaudible",
    name = "Audible",
    dscr = "Add audible as a course expense"
},
{
    t({"Expense:Course:Audible"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local leetcode = snip({
    trig = "ecleetcode",
    name = "Leetcode",
    dscr = "Add leetcode as a course expense"
},
{
    t({"Expense:Course:Leetcode"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local payee_uber_trip = snip({
    trig = "ptuber",
    name = "Uber Trip",
    dscr = "Add Uber payee as a transport expense"
},
{
    f(date, {}), t({" * "}), t({"Uber"}),
    t({"", "    ; City: "}), t("    "), i(1, "Value"),
    t({"", "    Expense:Transport:Auto"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local payee_uber_eats = snip({
    trig = "pduber",
    name = "Uber Eat",
    dscr = "Add Uber payee as a dining expense"
},
{
    f(date, {}), t({" * "}), t({"Uber"}),
    t({"", "    Expense:Dining"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local payee_kindle = snip({
    trig = "pkindle",
    name = "Kindle",
    dscr = "Add Kindle payee as a course expense"
},
{
    f(date, {}), t({" * "}), t({"Kindle"}),
    t({"", "    Expense:Course"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local payee_leetcode = snip({
    trig = "pleetcode",
    name = "Leetcode",
    dscr = "Add Leetcode payee as a course expense"
},
{
    f(date, {}), t({" * "}), t({"Leetcode"}),
    t({"", "    Expense:Course"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local payee_apple = snip({
    trig = "payee_apple",
    name = "Apple",
    dscr = "Add Apple laptop as a tangible asset"
},
{
    f(date, {}), t({" * "}), t({"Apple"}),
    t({"", "    Asset:Tangible:Laptop"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local payee_starbucks = snip({
    trig = "payee_starbucks",
    name = "Starbucks",
    dscr = "Add Starbucks as a dining expense"
},
{
    f(date, {}), t({" * "}), t({"Starbucks"}),
    t({"", "    Expense:Dining:Coffee"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local payee_tim = snip({
    trig = "payee_tim",
    name = "Tim Hortons",
    dscr = "Add Tim Hortons as a dining expense"
},
{
    f(date, {}), t({" * "}), t({"Tim Hortons"}),
    t({"", "    Expense:Dining:Coffee"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local payee_adonis = snip({
    trig = "payee_adonis",
    name = "Adonis",
    dscr = "Add Adonis as a grocery expense"
},
{
    f(date, {}), t({" * "}), t({"Adonis"}),
    t({"", "    Expense:Food:Grocery"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local payee_iga = snip({
    trig = "payee_iga",
    name = "IGA",
    dscr = "Add IGA as a grocery expense"
},
{
    f(date, {}), t({" * "}), t({"IGA"}),
    t({"", "    Expense:Food:Grocery"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local payee_stm = snip({
    trig = "payee_stm",
    name = "STM",
    dscr = "Add STM as a grocery expense"
},
{
    f(date, {}), t({" * "}), t({"STM"}),
    t({"", "    Expense:Transport:Metro"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local payee_mano = snip({
    trig = "payee_mano",
    name = "Mano Cornuto",
    dscr = "Add Mano Cornuto as a dining expense"
},
{
    f(date, {}), t({" * "}), t({"Cafe Mano Cornuto"}),
    t({"", "    Expense:Dining:Coffee"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local payee_withdraw = snip({
    trig = "payee_withdraw",
    name = "Cash Withdrawal",
    dscr = "Add cash withdrawal as a dining expense"
},
{
    f(date, {}), t({" * "}), t({"Withdrawal"}),
    t({"", "    Asset:Cash"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local payee_hydro = snip({
    trig = "payee_hydro",
    name = "Hydro Quebec",
    dscr = "Add Hydro Quebec as a utility expense"
},
{
    f(date, {}), t({" * "}), t({"Hydro Quebec"}),
    t({"", "    Expense:Utility:Electricity"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local payee_fido = snip({
    trig = "payee_fido",
    name = "Fido",
    dscr = "Add Fido as a utility expense"
},
{
    f(date, {}), t({" * "}), t({"Fido"}),
    t({"", "    Expense:Utility:Phone"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local payee_rent = snip({
    trig = "payee_rent",
    name = "Rent",
    dscr = "Add rent as a utility expense"
},
{
    f(date, {}), t({" * "}), t({"Adeline"}),
    t({"", "    Expense:Utility:Rent"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local payee_lululemon = snip({
    trig = "payee_lululemon",
    name = "Lululemon",
    dscr = "Add Lululemon as a fashion expense"
},
{
    f(date, {}), t({" * "}), t({"Lululemon"}),
    t({"", "    Expense:Fashion:Cloth"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local asset_checking_scotia = snip({
    trig = "asset_checking_scotia",
    name = "Scotia Checking Account",
    dscr = "Add Scotia checking account as an asset"
},
{
    t({"Asset:Checking:Scotia"}),
})

local liability_cibc_dividend = snip({
    trig = "liability_cibc_dividend_card",
    name = "CIBC Dividend Card",
    dscr = "Add CIBD Dividend Card as a credit card liability"
},
{
    t({"Liability:Credit:Cibc Dividend"}),
})

---------------------------------------------------------------------------------------------------
-- Health
---------------------------------------------------------------------------------------------------

local skin = snip({
    trig = "skin",
},
{
    t({"Expense:Health:Skin"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local acupuncture = snip({
    trig = "acupuncture",
},
{
    t({"Expense:Health:Acupuncture"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local supplement = snip({
    trig = "supplement",
},
{
    t({"Expense:Health:Supplement"}), t("    "), i(1, "Value"), t({" CAD"}),
})

local dental = snip({
    trig = "dental",
},
{
    t({"Expense:Health:Dental"}), t("    "), i(1, "Value"), t({" CAD"}),
})

---------------------------------------------------------------------------------------------------

table.insert(snippets, asset_checking_scotia)
table.insert(snippets, liability_cibc_dividend)

-- Add entry
table.insert(snippets, payee)
table.insert(snippets, payee_rent)
table.insert(snippets, payee_hydro)
table.insert(snippets, payee_lululemon)
table.insert(snippets, payee_fido)
table.insert(snippets, payee_mano)
table.insert(snippets, payee_apple)
table.insert(snippets, payee_starbucks)
table.insert(snippets, payee_tim)
table.insert(snippets, payee_adonis)
table.insert(snippets, payee_iga)
table.insert(snippets, payee_stm)
table.insert(snippets, payee_withdraw)

table.insert(snippets, payee_uber_trip)
table.insert(snippets, payee_uber_eats)
table.insert(snippets, payee_kindle)
table.insert(snippets, payee_leetcode)
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
table.insert(snippets, jackfruit)

-- Vegetable
table.insert(snippets, carrot_white)
table.insert(snippets, carrot_orange)
table.insert(snippets, onion_green)
table.insert(snippets, onion_yellow)
table.insert(snippets, potato_sweet)
table.insert(snippets, potato_yellow)
table.insert(snippets, pepper)
table.insert(snippets, ginger)
table.insert(snippets, lettuce)
table.insert(snippets, spinach)
table.insert(snippets, tomato)
table.insert(snippets, mushroom)
table.insert(snippets, corn)
table.insert(snippets, cucumber)
table.insert(snippets, asparagus)
table.insert(snippets, edamame)
table.insert(snippets, other)

-- Diary
table.insert(snippets, egg)
table.insert(snippets, milk)
table.insert(snippets, yogurt)
table.insert(snippets, cheese)

-- Dining
table.insert(snippets, resto)
table.insert(snippets, takeout)
table.insert(snippets, uber_eats)
table.insert(snippets, dining_coffee)
table.insert(snippets, bubble_tea)
table.insert(snippets, drinks)

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
table.insert(snippets, chocolate)

table.insert(snippets, fee_gst)
table.insert(snippets, fee_enviro)

-- Grocery
table.insert(snippets, rice)
table.insert(snippets, oats)

-- Expense
table.insert(snippets, amex)
table.insert(snippets, snack)
table.insert(snippets, coffee)
table.insert(snippets, grocery)
table.insert(snippets, dairy)
table.insert(snippets, home)
table.insert(snippets, seafood)
table.insert(snippets, tpd)
table.insert(snippets, pharmacy)
table.insert(snippets, spice)
table.insert(snippets, sauce)
table.insert(snippets, beef)
table.insert(snippets, chicken)
table.insert(snippets, pork)

-- Course
table.insert(snippets, kindle)
table.insert(snippets, audible)
table.insert(snippets, leetcode)

-- Accounts
table.insert(snippets, entry)
table.insert(snippets, joint_checking)
table.insert(snippets, amex_cobalt)
table.insert(snippets, amex_gold)

-- Health
table.insert(snippets, skin)
table.insert(snippets, dental)
table.insert(snippets, supplement)
table.insert(snippets, acupuncture)

return snippets
