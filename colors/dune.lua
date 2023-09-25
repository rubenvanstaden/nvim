local color = {
    base          = "#282C34",
    text          = "#ABB2BF",

    keyword    = "#c8c9c8",
    string     = "#ffffff",
    special    = "#949491",
    number     = "#B48EAD",
    kind     = "#abb2bf",
    constant = "#949491",
    comment = "#5C6370",
}

vim.api.nvim_set_hl(0, "Normal",      { fg = color.text, bg = color.base })
vim.api.nvim_set_hl(0, "Comment",     { fg = color.comment, bg = nil, italic = true })
vim.api.nvim_set_hl(0, "Statement",   { fg = color.keyword, bg = nil })
vim.api.nvim_set_hl(0, "Repeat",      { link = "Statement" })
vim.api.nvim_set_hl(0, "Structure",   { link = "Statement" })
vim.api.nvim_set_hl(0, "StorageClass", { link = "Statement" })
vim.api.nvim_set_hl(0, "Keyword",      { link = "Statement" })
vim.api.nvim_set_hl(0, "Exception",    { link = "Statement" })
vim.api.nvim_set_hl(0, "Conditional",  { link = "Statement" })
vim.api.nvim_set_hl(0, "Define",       { link = "Statement" })

vim.api.nvim_set_hl(0, "Constant",   { fg = color.constant, bg = nil })
vim.api.nvim_set_hl(0, "Boolean",    { link = "Constant" })
vim.api.nvim_set_hl(0, "Character",  { link = "Constant" })

vim.api.nvim_set_hl(0, "Number", { fg = color.number, bg = nil })
vim.api.nvim_set_hl(0, "Float",  { link = "Number" })
vim.api.nvim_set_hl(0, "Type",   {  fg = color.kind, bg = nil, bold = false  })

vim.api.nvim_set_hl(0, "String", { fg = color.string, bg = nil })
--vim.api.nvim_set_hl(0, "Typedef", { link = "Type" })

vim.api.nvim_set_hl(0, "Function",   { fg = color.keyword, bg = nil, bold = true })
vim.api.nvim_set_hl(0, "Identifier", { link = "Function" })
vim.api.nvim_set_hl(0, "Include",    { link = "Function" })
vim.api.nvim_set_hl(0, "Operator",   { link = "Function" })
vim.api.nvim_set_hl(0, "Title",      { link = "Function" })

vim.api.nvim_set_hl(0, "Special", { fg = color.keyword, bg = nil})
vim.api.nvim_set_hl(0, "PreProc", { link = "Special" })
vim.api.nvim_set_hl(0, "Label",   { link = "Special" })
vim.api.nvim_set_hl(0, "Todo",    { fg = color.special, bg = nil, bold = true })
vim.api.nvim_set_hl(0, "Search",  { fg = text, bg = nil, bold = true })
vim.api.nvim_set_hl(0, "MatchParen", { fg = color.number, bg = nil, bold = true })
vim.api.nvim_set_hl(0, "SignColumn",   { bg = color.base })

-- Editor
