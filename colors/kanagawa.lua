local color = {
    sumiInk0      = "#16161D",
    sumiInk1b     = "#181820",
    sumiInk1c     = "#1a1a22",
    sumiInk1      = "#1F1F28",
    sumiInk2      = "#2A2A37",
    sumiInk3      = "#363646",
    sumiInk4      = "#54546D",
    waveBlue1     = "#223249",
    waveBlue2     = "#2D4F67",
    winterGreen   = "#2B3328",
    winterYellow  = "#49443C",
    winterRed     = "#43242B",
    winterBlue    = "#252535",
    autumnGreen   = "#76946A",
    autumnRed     = "#C34043",
    autumnYellow  = "#DCA561",
    samuraiRed    = "#E82424",
    roninYellow   = "#FF9E3B",
    waveAqua1     = "#6A9589",
    dragonBlue    = "#658594",
    oldWhite      = "#C8C093",
    fujiWhite     = "#DCD7BA",
    fujiGray      = "#727169",
    springViolet1 = "#938AA9",
    oniViolet     = "#957FB8",
    crystalBlue   = "#7E9CD8",
    springViolet2 = "#9CABCA",
    springBlue    = "#7FB4CA",
    waveAqua2     = "#7AA89F",
    waveAqua4     = "#7AA880",
    waveAqua5     = "#6CAF95",
    waveAqua3     = "#68AD99",
    springGreen   = "#98BB6C",
    boatYellow2   = "#C0A36E",
    carpYellow    = "#E6C384",
    sakuraPink    = "#D27E99",
    waveRed       = "#E46876",
    peachRed      = "#FF5D62",
    surimiOrange  = "#FFA066",
    katanaGray    = "#717C7C"
}

vim.api.nvim_set_hl(0, "Normal", { fg = color.fujiWhite, bg = color.sumiInk1 })
vim.api.nvim_set_hl(0, "Statement", { fg = color.oniViolet, bg = nil })
vim.api.nvim_set_hl(0, "Repeat", { link = "Statement" })
vim.api.nvim_set_hl(0, "Structure", { link = "Statement" })
vim.api.nvim_set_hl(0, "StorageClass", { link = "Statement" })
vim.api.nvim_set_hl(0, "Keyword", { link = "Statement" })
vim.api.nvim_set_hl(0, "Exception", { link = "Statement" })
vim.api.nvim_set_hl(0, "Conditional", { link = "Statement" })
vim.api.nvim_set_hl(0, "Define", { link = "Statement" })
vim.api.nvim_set_hl(0, "Constant", { fg = color.sutimiOrange, bold = true })
vim.api.nvim_set_hl(0, "Boolean", { link = "Constant" })
vim.api.nvim_set_hl(0, "Character", { link = "Constant" })
vim.api.nvim_set_hl(0, "Number", { fg = color.sakuraPink, bg = nil, italic = true })
vim.api.nvim_set_hl(0, "Float", { link = "Number" })
vim.api.nvim_set_hl(0, "Identifier", { fg = color.carpYellow, bg = nil })
vim.api.nvim_set_hl(0, "String", { fg = color.springGreen, bg = nil })
vim.api.nvim_set_hl(0, "Type", { fg = color.waveAqua2 })
vim.api.nvim_set_hl(0, "Typedef", { link = "Type" })
vim.api.nvim_set_hl(0, "Function", { fg = color.crystalBlue, bg = nil, italic = true })
vim.api.nvim_set_hl(0, "Include", { link = "Function" })
vim.api.nvim_set_hl(0, "Operator", { link = "Function" })
vim.api.nvim_set_hl(0, "Title",        { fg = color.crystalBlue, bold = true })
vim.api.nvim_set_hl(0, "Special", { fg = color.springBlue, bg = nil})
vim.api.nvim_set_hl(0, "PreProc", { link = "Special" })
vim.api.nvim_set_hl(0, "Label", { link = "Special" })
vim.api.nvim_set_hl(0, "Todo", { fg = color.waveRed, bg = nil })
vim.api.nvim_set_hl(0, "Comment", { fg = color.fujiGray, italic = true })
vim.api.nvim_set_hl(0, "Search", { fg = color.none, bg = color.base00 })
vim.api.nvim_set_hl(0, "MatchParen", { fg = color.sakuraPink, bg = color.none, bold = true })
--vim.api.nvim_set_hl(0, "Question", { link = "Special" })

-- Editor
vim.api.nvim_set_hl(0, "LineNr", { bg = color.sumiInk4, fg = nil, bold = false })
vim.api.nvim_set_hl(0, "StatusLine", { bg = color.sumiInk0, fg = nil })
vim.api.nvim_set_hl(0, "Pmenu", { bg = color.waveBlue1, fg = nil })
vim.api.nvim_set_hl(0, "PmenuSel", { bg = color.waveBlue1, fg = nil, bold = true })
vim.api.nvim_set_hl(0, "NonText", { fg = color.sumiInk4, bg = nil})
vim.api.nvim_set_hl(0, "Visual", { bg = color.sumiInk4, fg = nil })
vim.api.nvim_set_hl(0, "SignColumn", { fg = color.sumiInk0 , bg = nil })
vim.api.nvim_set_hl(0, "CursorLine", { bg = color.sumiInk2, bg = nil })
--vim.api.nvim_set_hl(0, "CursorLineNr", { bg = color.base03, fg = color.base00, bold = true })
--vim.api.nvim_set_hl(0, "VertSplit", { fg = color.base02 })
--vim.api.nvim_set_hl(0, "Cursor", { fg = color.base1, bg = color.green })
--vim.api.nvim_set_hl(0, "VisualMode", { fg = color.blue, bg = color.base03, reverse = true })

-- Diagnostics
vim.api.nvim_set_hl(0, "Error", { fg = color.peachRed, bg = nil})
vim.api.nvim_set_hl(0, "ErrorMsg", { link = "Error" })
vim.api.nvim_set_hl(0, "DiagnosticError", { link = "Error" })
vim.api.nvim_set_hl(0, "Warnings", { fg = color.roninYellow, bg = nil })
vim.api.nvim_set_hl(0, "WarningMsg", { link = "Warnings" })
vim.api.nvim_set_hl(0, "DiagnosticWarn", { link = "Warnings" })

vim.api.nvim_set_hl(0, "markdownCode",              { fg = color.waveAqua1 })
