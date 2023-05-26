local color = {

    none = 'NONE',

    base03 = "#002b36",
    base02 = "#073642",
    base01 = "#586e75",
    base00 = "#657b83",

    base0 = "#839496",
    base1 = "#93a1a1",
    base2 = "#eee8d5",

    yellow = "#b58900",
    orange = "#cb4b16",
    red = "#dc322f",
    magenta = "#d33682",
    violet = "#6c71c4",
    blue = "#268bd2",
    cyan = "#2aa198",
    green = "#859900",
}

vim.api.nvim_set_hl(0, "Normal", { fg = color.base00, bg = color.base03 })

vim.api.nvim_set_hl(0, "Statement", { fg = color.green, bold = false, italic = false })
vim.api.nvim_set_hl(0, "Repeat", { link = "Statement" })
vim.api.nvim_set_hl(0, "Structure", { link = "Statement" })
vim.api.nvim_set_hl(0, "StorageClass", { link = "Statement" })
vim.api.nvim_set_hl(0, "Keyword", { link = "Statement" })
vim.api.nvim_set_hl(0, "Exception", { link = "Statement" })
vim.api.nvim_set_hl(0, "Conditional", { link = "Statement" })
vim.api.nvim_set_hl(0, "Define", { link = "Statement" })

--vim.api.nvim_set_hl(0, "Constant", { fg = color.yellow, bold = false })
vim.api.nvim_set_hl(0, "Constant", { fg = color.base0, bold = true })
vim.api.nvim_set_hl(0, "Boolean", { link = "Constant" })
vim.api.nvim_set_hl(0, "Character", { link = "Constant" })
vim.api.nvim_set_hl(0, "Number", { link = "Constant" })
vim.api.nvim_set_hl(0, "Float", { link = "Constant" })

vim.api.nvim_set_hl(0, "Identifier", { fg = color.cyan, italic = false })
vim.api.nvim_set_hl(0, "String", { link = "Identifier" })
vim.api.nvim_set_hl(0, "Type", { link = "Identifier" })
vim.api.nvim_set_hl(0, "Typedef", { link = "Identifier" })

vim.api.nvim_set_hl(0, "Function", { fg = color.blue, bold = false })
vim.api.nvim_set_hl(0, "Include", { link = "Function" })
vim.api.nvim_set_hl(0, "Operator", { link = "Function" })

vim.api.nvim_set_hl(0, "Special", { fg = color.violet, italic = false, bold = false })
vim.api.nvim_set_hl(0, "PreProc", { link = "Special" })
vim.api.nvim_set_hl(0, "Question", { link = "Special" })
vim.api.nvim_set_hl(0, "Todo", { link = "Special" })
vim.api.nvim_set_hl(0, "Label", { link = "Special" })

vim.api.nvim_set_hl(0, "Comment", { fg = color.base01, italic = false })
vim.api.nvim_set_hl(0, "Search", { fg = color.none, bg = color.base00 })
vim.api.nvim_set_hl(0, "MatchParen", { fg = color.cyan, bg = color.none, bold = true })

-- Markdown
vim.api.nvim_set_hl(0, "markdownLinkText", { fg = color.cyan, bold = false })
vim.api.nvim_set_hl(0, "markdownHeadingDelimiter", { fg = color.base0,  bold = true })
vim.api.nvim_set_hl(0, "shDerefSimple", { fg = color.base0,  bold = true })

-- Editor

vim.api.nvim_set_hl(0, "StatusLine", { bg = color.base00, fg = color.base03, bold = true })
vim.api.nvim_set_hl(0, "Pmenu", { fg = color.base00, bg = color.base02 })
vim.api.nvim_set_hl(0, "PmenuSel", { fg = color.base02, bg = color.base2 })
vim.api.nvim_set_hl(0, "NonText", { fg = color.base02 })
vim.api.nvim_set_hl(0, "VertSplit", { link = "NonText" })
vim.api.nvim_set_hl(0, "Title", { fg = color.boase00, bold = true })
vim.api.nvim_set_hl(0, "Visual", { fg = color.none, bg = color.base01 })
--vim.api.nvim_set_hl(0, "VisualMode", { fg = color.blue, bg = color.base03, reverse = true })
vim.api.nvim_set_hl(0, "SignColumn", { fg = color.base00, bg = color.base03 })
vim.api.nvim_set_hl(0, "Cursor", { fg = color.base00, bg = color.blue, reverse = true })
vim.api.nvim_set_hl(0, "CursorLine", { bg = color.base02 })

-- Diagnostics
vim.api.nvim_set_hl(0, "Error", { fg = color.red })
vim.api.nvim_set_hl(0, "ErrorMsg", { link = "Error" })
vim.api.nvim_set_hl(0, "Warnings", { fg = color.yellow })
vim.api.nvim_set_hl(0, "WarningMsg", { link = "Warnings" })
vim.api.nvim_set_hl(0, "DiagnosticError", { link = "Error" })
vim.api.nvim_set_hl(0, "DiagnosticWarn", { link = "Warnings" })
