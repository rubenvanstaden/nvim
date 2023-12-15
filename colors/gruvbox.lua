local color = {

    none = 'NONE',

    bg = "#282828",
    red = "#cc241d",
    green = "#98971a",
    yellow = "#d79921",
    blue = "#458588",
    purple = "#b16286",
    aqua = "#689d6a",
    gray_light = "#a89984",
    gray = "#928374",

    red_bright = "#fd4934",

    bg0 = "#282828",
    bg1 = "#3c3836",
    bg2 = "#504945",
    bg3 = "#665c54",
    bg4 = "#7c6f64",

    fg0 = "#fbf1c7",
    fg1 = "#ebdbb2",
    fg2 = "#d5c4a1",
    fg3 = "#bdae93",
    fg4 = "#a89984",
}

vim.api.nvim_set_hl(0, "Normal", { fg = color.fg1, bg = nil })
vim.api.nvim_set_hl(0, "Comment", { fg = color.gray, italic = true })

vim.api.nvim_set_hl(0, "Statement", { fg = color.red })
vim.api.nvim_set_hl(0, "Repeat", { fg = color.red })
vim.api.nvim_set_hl(0, "StorageClass", { link = "Repeat" })
vim.api.nvim_set_hl(0, "Keyword", { link = "Repeat" })
vim.api.nvim_set_hl(0, "Exception", { link = "Repeat" })
vim.api.nvim_set_hl(0, "Conditional", { link = "Repeat" })

vim.api.nvim_set_hl(0, "Identifier", { fg = color.blue, bold = true })

vim.api.nvim_set_hl(0, "Function", { fg = color.green, bold = true })
vim.api.nvim_set_hl(0, "Directory", { link = "Function" })

vim.api.nvim_set_hl(0, "PreProc", { fg = color.aqua })
vim.api.nvim_set_hl(0, "PreCondit", { link = "PreProc" })
vim.api.nvim_set_hl(0, "Include", { link = "PreProc" })
vim.api.nvim_set_hl(0, "Define", { link = "PreProc" })
vim.api.nvim_set_hl(0, "Macro", { link = "PreProc" })
vim.api.nvim_set_hl(0, "Todo", { link = "PreProc" })
vim.api.nvim_set_hl(0, "Structure", { link = "PreProc" })

vim.api.nvim_set_hl(0, "Constant", { fg = color.purple, bold = true })
vim.api.nvim_set_hl(0, "Character", { link = "Constant" })
vim.api.nvim_set_hl(0, "Boolean", { link = "Constant" })
vim.api.nvim_set_hl(0, "Number", { link = "Constant" })
vim.api.nvim_set_hl(0, "Float", { link = "Constant" })
vim.api.nvim_set_hl(0, "Operator", { fg = color.orange, italic = true })

vim.api.nvim_set_hl(0, "Type", { fg = color.yellow })
vim.api.nvim_set_hl(0, "Typdef", { link = "Type" })

vim.api.nvim_set_hl(0, "StorageClass", { fg = color.orange })
vim.api.nvim_set_hl(0, "Special", { link = "StorageClass" })

vim.api.nvim_set_hl(0, "Pmenu", { fg = color.fg1, bg = color.bg2 })
vim.api.nvim_set_hl(0, "PmenuSel", { fg = color.bg2, bg = color.blue, bold = true })

vim.api.nvim_set_hl(0, "String", { fg = color.green, bg = color.none, italic = true })

vim.api.nvim_set_hl(0, "LineNr", { fg = color.bg4, bg = color.none })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = color.yellow, bg = color.bg1 })
vim.api.nvim_set_hl(0, "StatusLine", { fg = color.bg2, bg = color.fg1 })

vim.api.nvim_set_hl(0, "NonText", { fg = color.bg2 })
vim.api.nvim_set_hl(0, "VertSplit", { fg = color.bg3, bg = color.bg0 })

vim.api.nvim_set_hl(0, "Title", { fg = color.green, bold = true })
vim.api.nvim_set_hl(0, "Visual", { fg = color.none, bg = color.bg3 })

vim.api.nvim_set_hl(0, "SignColumn", { fg = color.base00, bg = color.base03 })
vim.api.nvim_set_hl(0, "CursorLine", { fg = color.none, bg = color.bg1 })
vim.api.nvim_set_hl(0, "MatchParen", { fg = color.purple, bold = true })

vim.api.nvim_set_hl(0, "Error", { fg = color.red, bold = true })
vim.api.nvim_set_hl(0, "ErrorMsg", { link = "Error" })
vim.api.nvim_set_hl(0, "Warnings", { fg = color.yellow })
vim.api.nvim_set_hl(0, "WarningMsg", { link = "Warnings" })
vim.api.nvim_set_hl(0, "DiagnosticError", { link = "Error" })
vim.api.nvim_set_hl(0, "DiagnosticWarn", { link = "Warnings" })
