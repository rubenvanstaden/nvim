local color = {
    none = "NONE",
    dark_blue = "#161821", -- Base Dark Blue
    iceberg1 = "#1e2132", -- Dark Blue
    light_blue = "#c6c8d1", -- Light Blue
    purple = "#a093c7", -- Purple
    iceberg4 = "#e27878", -- Pink
    orange = "#e2a478", -- Orange
    green = "#b4be82", -- Yellow
    cyan = "#89b482", -- Cyan
    blue = "#84a0c6", -- Blue
}

-- Code
vim.api.nvim_set_hl(0, "Normal", { fg = color.light_blue, bg = color.dark_blue })

vim.api.nvim_set_hl(0, "Statement", { fg = color.blue })
vim.api.nvim_set_hl(0, "Repeat", { link = "Statement" })
vim.api.nvim_set_hl(0, "Structure", { link = "Statement" })
vim.api.nvim_set_hl(0, "StorageClass", { link = "Statement" })
vim.api.nvim_set_hl(0, "Type", { link = "Statement" })
vim.api.nvim_set_hl(0, "Keyword", { link = "Statement" })

vim.api.nvim_set_hl(0, "Constant", { fg = color.purple })
vim.api.nvim_set_hl(0, "Boolean", { link = "Constant" })
vim.api.nvim_set_hl(0, "Character", { link = "Constant" })
vim.api.nvim_set_hl(0, "Number", { link = "Constant" })
vim.api.nvim_set_hl(0, "Float", { link = "Constant" })

vim.api.nvim_set_hl(0, "Identifier", { fg = color.blue, italic = true })
vim.api.nvim_set_hl(0, "String", { link = "Identifier" })
vim.api.nvim_set_hl(0, "Typedef", { link = "Identifier" })

vim.api.nvim_set_hl(0, "Function", { fg = color.orange, italic = true })

vim.api.nvim_set_hl(0, "Special", { fg = color.green, italic = false })
vim.api.nvim_set_hl(0, "PreProc", { link = "Special" })
vim.api.nvim_set_hl(0, "Question", { link = "Special" })
vim.api.nvim_set_hl(0, "Todo", { link = "Special", bold = true })

vim.api.nvim_set_hl(0, "Conditional", { fg = color.blue, bold = false })
vim.api.nvim_set_hl(0, "Label", { fg = color.blue })
vim.api.nvim_set_hl(0, "Include", { link = "PreProc" })
vim.api.nvim_set_hl(0, "Define", { link = "PreProc" })
vim.api.nvim_set_hl(0, "Exception", { fg = color.blue })
vim.api.nvim_set_hl(0, "Operator", { fg = color.blue })
vim.api.nvim_set_hl(0, "Identifier", { fg = color.cyan, italic = true })
vim.api.nvim_set_hl(0, "SpecialChar", { fg = color.green })
vim.api.nvim_set_hl(0, "PreCondit", { fg = color.green })
vim.api.nvim_set_hl(0, "Macro", { fg = color.blue })
vim.api.nvim_set_hl(0, "Delimiter", { fg = color.iceberg1, bold = true })
vim.api.nvim_set_hl(0, "Comment", { fg = color.iceberg0, italic = true })
vim.api.nvim_set_hl(0, "SpecialComment", { fg = color.iceberg4 })
vim.api.nvim_set_hl(0, "SpecialKey", { fg = color.blue })
vim.api.nvim_set_hl(0, "MatchParen", { fg = color.purple, bg = color.none, bold = true })
vim.api.nvim_set_hl(0, "Search", { fg = color.iceberg1, bg = color.purple })

-- Editor
vim.api.nvim_set_hl(0, "Cursor", { fg = color.iceberg2, bg = color.none, reverse = true })
vim.api.nvim_set_hl(0, "CursorLine", { bg = color.iceberg1 })
vim.api.nvim_set_hl(0, "StatusLine", { bg = color.iceberg1, fg = color.iceberg2 })
vim.api.nvim_set_hl(0, "NonText", { fg = color.iceberg1 })
vim.api.nvim_set_hl(0, "VertSplit", { fg = color.iceberg1 })
vim.api.nvim_set_hl(0, "MoreMsg", { link = "Special" })
vim.api.nvim_set_hl(0, "Directory", { link = "Identifier" })
vim.api.nvim_set_hl(0, "Title", { fg = color.cyan, bold = true })
vim.api.nvim_set_hl(0, "Visual", { fg = color.none, bg = color.iceberg1 })
vim.api.nvim_set_hl(0, "VisualMode", { fg = color.blue, bg = color.none, reverse = true })
vim.api.nvim_set_hl(0, "ModeMsg", { fg = color.iceberg2 })
vim.api.nvim_set_hl(0, "Pmenu", { fg = color.iceberg2, bg = color.iceberg1 })
vim.api.nvim_set_hl(0, "PmenuSel", { fg = color.iceberg2, bg = color.purple })
vim.api.nvim_set_hl(0, "Substitute", { fg = color.iceberg0, bg = color.iceberg5 })
vim.api.nvim_set_hl(0, "SignColumn", { fg = color.iceberg2, bg = color.iceberg0 })

-- Diagnostics
vim.api.nvim_set_hl(0, "Error", { fg = color.iceberg4 })
vim.api.nvim_set_hl(0, "ErrorMsg", { link = "Error" })
vim.api.nvim_set_hl(0, "Warnings", { fg = color.green })
vim.api.nvim_set_hl(0, "WarningMsg", { link = "Warnings" })
vim.api.nvim_set_hl(0, "DiagnosticError", { link = "Error" })
vim.api.nvim_set_hl(0, "DiagnosticWarn", { link = "Warnings" })
