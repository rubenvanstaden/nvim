-------------------------------------------------------------------------------
-- Colorscheme
-------------------------------------------------------------------------------
--
-- https://github.com/catppuccin/nvim/blob/main/lua/catppuccin/groups/syntax.lua
--
local colors = {
	rosewater = "#f2d5cf",
	flamingo = "#eebebe",
	pink = "#f4b8e4",
	mauve = "#ca9ee6",
	red = "#e78284",
	maroon = "#ea999c",
	peach = "#ef9f76",
	yellow = "#e5c890",
	green = "#a6d189",
	teal = "#81c8be",
	sky = "#99d1db",
	sapphire = "#85c1dc",
	blue = "#8caaee",
	lavender = "#babbf1",
	text = "#c6d0f5",
	subtext1 = "#b5bfe2",
	subtext0 = "#a5adce",
	overlay2 = "#949cbb",
	overlay1 = "#838ba7",
	overlay0 = "#737994",
	surface2 = "#626880",
	surface1 = "#51576d",
	surface0 = "#414559",
	base = "#303446",
	mantle = "#292c3c",
	crust = "#232634",
}

-- Constants

vim.api.nvim_set_hl(0, "Normal", { bg = colors.base, fg = colors.peach })
vim.api.nvim_set_hl(0, "String", { bg = nil, fg = colors.green })
vim.api.nvim_set_hl(0, "Constant", { bg = nil, fg = colors.peach })
vim.api.nvim_set_hl(0, 'Number', { bg = nil, fg = colors.peach })
vim.api.nvim_set_hl(0, "Function", { fg = colors.blue, bg = nil })
vim.api.nvim_set_hl(0, "Todo", { fg = colors.red, bg = colors.none })
vim.api.nvim_set_hl(0, "MatchParen", { bg = nil, fg = colors.peach, bold = true })

vim.api.nvim_set_hl(0, "Statement", { fg = color.mauve, bold = false, italic = false })
vim.api.nvim_set_hl(0, "Repeat", { link = "Statement" })
vim.api.nvim_set_hl(0, "Structure", { link = "Statement" })
vim.api.nvim_set_hl(0, "StorageClass", { link = "Statement" })
vim.api.nvim_set_hl(0, "Keyword", { link = "Statement" })
vim.api.nvim_set_hl(0, "Exception", { link = "Statement" })
vim.api.nvim_set_hl(0, "Conditional", { link = "Statement" })
vim.api.nvim_set_hl(0, "Define", { link = "Statement" })

--vim.api.nvim_set_hl(0, "Constant", { fg = color.yellow, bold = false })
vim.api.nvim_set_hl(0, "Constant", { fg = color.peach, bold = true })
vim.api.nvim_set_hl(0, "Boolean", { link = "Constant" })
vim.api.nvim_set_hl(0, "Character", { link = "Constant" })

vim.api.nvim_set_hl(0, "Float", { link = "Number" })

vim.api.nvim_set_hl(0, "Identifier", { fg = color.flamingo, italic = false })
vim.api.nvim_set_hl(0, "String", { link = "Identifier" })
vim.api.nvim_set_hl(0, "Type", { link = "Identifier" })
vim.api.nvim_set_hl(0, "Typedef", { link = "Identifier" })

vim.api.nvim_set_hl(0, "Include", { link = "Function" })
vim.api.nvim_set_hl(0, "Operator", { fg = color.base00, bold = false })
