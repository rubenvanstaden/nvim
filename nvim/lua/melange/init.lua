local M = {}

local colors = {
    none = "NONE",
    c0 = "#9e9e9e",
    c00 = "#333333",
    c1 = "#262626",
    c2 = "#bcbcbc",
    c3 = "#1c1c1c",
    c4 = "#6c6c6c",
    c5 = "#767676",
    c6 = "#ffffff",
    c7 = "#a8a8a8",
    c8 = "#8a8a8a",
    c9 = "#444444",
    c10 = "#585858",
    c11 = "#808080",
    c12 = "#303030",
    c13 = "#949494",
    pink = "#d27e99",
    n1 = "#5c6370",
    red = "#e06c75",
    cyan           = "#56B6C2",
    green          = "#98C379",
    yellow         = "#E5C07B",
    mauve = "#cba6f7",
    nord_green = "#A3BE8C",
    nord_cyan = "#88C0D0",
    nord_blue =    "#81A1C1",
    nord_yellow =   '#B48EAD',
    nord_pink = "#EBCB8B",
    rosewater =   '#f2d5cf',
    flamingo = "#eebebe",
    peach = "#ef9f76",
    teal = "#81c8be",
    overlay = "#737994",
    laverder = "#babbf1",
    surface = "#414559",
}

-- Constants

local set_groups = function()
    vim.api.nvim_set_hl(0, "Normal", { bg = colors.c1, fg = colors.c2 })
    vim.api.nvim_set_hl(0, "String", { bg = colors.none, fg = colors.c0 })
    vim.api.nvim_set_hl(0, "Constant", { bg = colors.none, fg = colors.c0 })
    vim.api.nvim_set_hl(0, 'Number', { bg = colors.none, fg = colors.pink })
    vim.api.nvim_set_hl(0, "LineNr", { bg = colors.c1, fg = colors.c4 })
    vim.api.nvim_set_hl(0, "Function", { fg = colors.c7, bg = colors.none, bold = false, italic = true })
    vim.api.nvim_set_hl(0, "Todo", { fg = colors.red, bg = colors.none })
    vim.api.nvim_set_hl(0, "MatchParen", { bg = colors.none, fg = colors.nord_pink, bold = true })
    vim.api.nvim_set_hl(0, "CursorLine", { bg = colors.c00, fg = colors.none, bold = false })
    vim.api.nvim_set_hl(0, "CursorLineNr", { bg = colors.c1, fg = colors.nord_yellow, bold = false })

    -- Go
    --   import, package, for, range
    -- Lua
    --   local
    vim.api.nvim_set_hl(0, "Statement", { fg = colors.c7, bg = colors.none, bold = false })
    vim.api.nvim_set_hl(0, "Operator", { fg = colors.c7, bg = colors.none, bold = true })
    vim.api.nvim_set_hl(0, "Structure", { fg = colors.c7, bg = colors.none, bold = true })

    vim.api.nvim_set_hl(0, "Title", { fg = colors.c7, bg = colors.none, bold = true })

    -- Go
    --   func, const, type, struct
    vim.api.nvim_set_hl(0, "Keyword", { fg = colors.c7, bg = colors.none, bold = true })
    -- Go
    --   for, while
    vim.api.nvim_set_hl(0, "Repeat", { fg = colors.c7, bg = colors.none, italic = true })
    -- Go
    --   if, switch
    vim.api.nvim_set_hl(0, "Conditional", { fg = colors.c7, bg = colors.none, italic = true })
    -- Go
    --   case, default
    vim.api.nvim_set_hl(0, "Label", { fg = colors.c7, bg = colors.none, bold = true })

    --vim.api.nvim_set_hl(0, "Typedef", { fg = colors.c7, bg = colors.none, bold = false })

    vim.api.nvim_set_hl(0, "Error", { bg = colors.none , fg = colors.red })
    vim.api.nvim_set_hl(0, "PreProc", { fg = colors.c5, bg = colors.none })

    -- Go
    --   Placeholder inside a string (%s, %v, %d, etc)
    vim.api.nvim_set_hl(0, "Special", { fg = colors.c2, bg = colors.none })
    -- Go
    --   make, panic
    vim.api.nvim_set_hl(0, "Identifier", { fg = colors.c11, bg = colors.none, bold = false })
    vim.api.nvim_set_hl(0, "Pmenu", { fg = colors.c2, bg = colors.c9 })
    vim.api.nvim_set_hl(0, "PmenuSel", { bg = colors.c5, fg = colors.c1 })

    vim.api.nvim_set_hl(0, "DiffAdd", { bg = colors.c1, fg = colors.c8, reverse = true })
    vim.api.nvim_set_hl(0, "DiffChange", { bg = colors.c1, fg = colors.c8, reverse = true })
    vim.api.nvim_set_hl(0, "DiffDelete", { bg = colors.c1, fg = colors.c8, reverse = true })

    -- C++
    --   int, long, char
    -- Go
    --   chan, map, byte, error
    vim.api.nvim_set_hl(0, "Type", { bg = colors.none, fg = colors.c8 })
    vim.api.nvim_set_hl(0, "Comment", { bg = colors.none, fg = colors.c10, italic = true })

    vim.api.nvim_set_hl(0, "Visual", { bg = colors.c1, fg = colors.c7, reverse = true })
    --vim.api.nvim_set_hl(0, "VisualNOS", { bg = colors.none, fg = colors.none })
    -- '~' and '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line).
    vim.api.nvim_set_hl(0, "NonText", { fg = colors.c10, bg = colors.none })
    -- column separating vertically split windows
    vim.api.nvim_set_hl(0, "VertSplit", { fg = colors.c9, bg = colors.c9 })
    vim.api.nvim_set_hl(0, "StatusLine", { fg = colors.c1, bg = colors.c11 })
    --vim.api.nvim_set_hl(0, "StatusLineTerm", { fg = colors.c1, bg = colors.c2 })
    --vim.api.nvim_set_hl(0, "StatusLineTermNC", { fg = colors.c1, bg = colors.c2 })
    --vim.api.nvim_set_hl(0, "StatusLineNC", { fg = colors.c1, bg = colors.c2 })

    -- Gitsigns
    vim.api.nvim_set_hl(0, "SignColumn", { bg = colors.c1, fg = colors.c4 })
    vim.api.nvim_set_hl(0, "GitSignsAdd", { bg = colors.c1, fg = colors.nord_green })
    vim.api.nvim_set_hl(0, "GitSignsChange", { bg = colors.c1, fg = colors.nord_yellow })
    vim.api.nvim_set_hl(0, "GitSignsDelete", { bg = colors.c1, fg = colors.red })

    -- Linking

    --vim.api.nvim_set_hl(0, 'Number', { link = "Contant" })
    vim.api.nvim_set_hl(0, "Boolean", { link = "Contant" })
    vim.api.nvim_set_hl(0, "Character", { link = "Contant" })
    vim.api.nvim_set_hl(0, "Float", { link = "Number" })
    --vim.api.nvim_set_hl(0, "Keyword", { link = "Statement" })
    vim.api.nvim_set_hl(0, "ErrorMsg", { link = "Error" })

    vim.api.nvim_set_hl(0, "DiagnosticError", { link = "Error" })
    vim.api.nvim_set_hl(0, "Typedef", { link = "Type" })
    --
    vim.api.nvim_set_hl(0, "Include", { link = "PreProc" })
    vim.api.nvim_set_hl(0, "Macro", { link = "PreProc" })
    vim.api.nvim_set_hl(0, "Define", { link = "PreProc" })

    vim.api.nvim_set_hl(0, "SpecialKey", { link = "Special" })
    --vim.api.nvim_set_hl(0, "SpecialChar", { link = "Special" })
    --vim.api.nvim_set_hl(0, "SpecialComment", { link = "Special" })
    --vim.api.nvim_set_hl(0, "Tag", { link = "Special" })
end

M.colorscheme = function()

  vim.api.nvim_command("hi clear")
  if vim.fn.exists("syntax_on") then
    vim.api.nvim_command("syntax reset")
  end

  vim.o.termguicolors = true
  vim.g.colors_name = "melange"

  set_groups()
end

return M
