local a = vim.api

local color = {
    nord0 = "#2E3440",
    nord1 = "#3B4252",
    nord2 = "#434C5E",
    nord3 = "#4C566A",
    nord4 = "#D8DEE9",
    nord5 = "#E5E9F0",
    nord6 = "#ECEFF4",
    nord7 = "#8FBCBB",
    nord8 = "#88C0D0",
    nord9 = "#81A1C1",
    nord10 = "#5E81AC",
    nord11 = "#BF616A",
    nord12 = "#D08770",
    nord13 = "#EBCB8B",
    nord14 = "#A3BE8C",
    nord15 = "#B48EAD",

    -- Custom colors out of palette
    none = "NONE",
    nord3_comment = "#616E88",
    nord4_onedark = "#ABB2BF",
}

-- Code
a.nvim_set_hl(0, "Type", { fg = color.nord9 })
a.nvim_set_hl(0, "Typedef", { link = "Type" })
a.nvim_set_hl(0, "Normal", { fg = color.nord4_onedark })
a.nvim_set_hl(0, "Statement", { fg = color.nord9 })
a.nvim_set_hl(0, "Structure", { fg = color.nord9 })
a.nvim_set_hl(0, "StorageClass", { fg = color.nord9 })
a.nvim_set_hl(0, "Boolean", { fg = color.nord9 })
a.nvim_set_hl(0, "Constant", { fg = color.nord4 })
a.nvim_set_hl(0, "Special", { fg = color.nord4 })
a.nvim_set_hl(0, "Float", { fg = color.nord15 })
a.nvim_set_hl(0, "String", { fg = color.nord14 })
a.nvim_set_hl(0, "Number", { fg = color.nord15 })
a.nvim_set_hl(0, "Keyword", { fg = color.nord9 })
a.nvim_set_hl(0, "Identifier", { fg = color.nord9, italic = true })
a.nvim_set_hl(0, "Function", { fg = color.nord8, italic = true })
a.nvim_set_hl(0, "Conditional", { fg = color.nord9, bold = false })
a.nvim_set_hl(0, "Label", { fg = color.nord9 })
a.nvim_set_hl(0, "PreProc", { fg = color.nord9 })
a.nvim_set_hl(0, "Include", { link = "PreProc" })
a.nvim_set_hl(0, "Define", { link = "PreProc" })
a.nvim_set_hl(0, "Exception", { fg = color.nord9 })
a.nvim_set_hl(0, "Repeat", { fg = color.nord9 })
a.nvim_set_hl(0, "Operator", { fg = color.nord9 })
a.nvim_set_hl(0, "Identifier", { fg = color.nord9, italic = true })
a.nvim_set_hl(0, "SpecialChar", { fg = color.nord13 })
a.nvim_set_hl(0, "PreCondit", { fg = color.nord13 })
a.nvim_set_hl(0, "Character", { fg = color.nord14 })
a.nvim_set_hl(0, "Macro", { fg = color.nord9 })
a.nvim_set_hl(0, "Delimiter", { fg = color.nord6 })
a.nvim_set_hl(0, "Comment", { fg = color.nord3_comment, italic = true })
a.nvim_set_hl(0, "SpecialComment", { fg = color.nord8 })
a.nvim_set_hl(0, "SpecialKey", { fg = color.nord9 })
a.nvim_set_hl(0, "MatchParen", { fg = color.nord15, bg = color.none, bold = true })
a.nvim_set_hl(0, "Todo", { fg = color.nord13 })
a.nvim_set_hl(0, "Search", { fg = color.nord6, bg = color.nord10 })

-- Editor
a.nvim_set_hl(0, "Cursor", { fg = color.nord4, bg = color.none, reverse = true })
a.nvim_set_hl(0, "CursorLine", { bg = color.nord1 })
a.nvim_set_hl(0, "StatusLine", { bg = color.nord2, fg = color.nord4 })
a.nvim_set_hl(0, "NonText", { fg = color.nord1 })
a.nvim_set_hl(0, "VertSplit", { fg = color.nord2 })
a.nvim_set_hl(0, "Title", { fg = color.nord14, bold = true })
a.nvim_set_hl(0, "Directory", { fg = color.nord7, bg = color.none })
a.nvim_set_hl(0, "Visual", { fg = color.none, bg = color.nord2 })
a.nvim_set_hl(0, "VisualMode", { fg = color.nord9, bg = color.none, reverse = true })
a.nvim_set_hl(0, "ModeMsg", { fg = color.nord4 })
a.nvim_set_hl(0, "MoreMsg", { fg = color.nord4 })
a.nvim_set_hl(0, "Pmenu", { fg = color.nord4, bg = color.nord2 })
a.nvim_set_hl(0, "PmenuSel", { fg = color.nord4, bg = color.nord10 })
a.nvim_set_hl(0, "Substitute", { fg = color.nord0, bg = color.nord12 })
a.nvim_set_hl(0, "SignColumn", { fg = color.nord4, bg = color.nord0 })

-- Diagnostics
a.nvim_set_hl(0, "Error", { fg = color.nord11 })
a.nvim_set_hl(0, "ErrorMsg", { link = "Error" })
a.nvim_set_hl(0, "Warnings", { fg = color.nord13 })
a.nvim_set_hl(0, "WarningMsg", { link = "Warnings" })
a.nvim_set_hl(0, "DiagnosticError", { link = "Error" })
a.nvim_set_hl(0, "DiagnosticWarn", { link = "Warnings" })
