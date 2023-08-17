-------------------------------------------------------------------------------
-- Options
-------------------------------------------------------------------------------

vim.g.mapleader   = " "                -- Remap leader to spacebar
vim.o.mouse       = "a"                -- Enable mouse completely (default), make "" to disable
vim.o.shiftwidth  = 4                  -- Number of spaces tabs count for
vim.o.tabstop     = 4                  -- Always use clipboard for all operations
vim.o.laststatus  = 2                  -- Set the status line to always be visible
vim.o.cmdheight   = 0                  -- Set the command line height
vim.o.cursorline  = true               -- Highlight current line
vim.o.expandtab   = true               -- Use spaces instead of tabs
vim.o.wrap        = true               -- Enable line wrapping
vim.o.linebreak   = true               -- Break words cleanly at line wrapping
vim.o.autoindent  = true               -- Auto-indent new lines
vim.o.showmatch   = true               -- Highlight matching parentheses. Maybe remove autobracket plugin
vim.o.showcmd     = true               -- Show partial commands in the command line while typing
vim.o.showmode    = false              -- Show the current mode in the command line
vim.o.clipboard   = "unnamedplus"      -- Always use clipboard for all operations
vim.o.completeopt = "menuone,noselect" -- Set completeopt for better completion experience

-------------------------------------------------------------------------------
-- Key Mappings
-------------------------------------------------------------------------------

vim.opt.dictionary = "~/.config/nvim/dictionary"
vim.opt.thesaurus  = "~/.config/nvim/thesaurus"

vim.api.nvim_set_keymap(
    'n', '<C-w>',
    ':set number!<CR> | :set relativenumber!<CR>',
    { noremap = true, silent = true, }
)

-- vim.api.nvim_set_keymap(
--     'i', '<Tab>',
--     'pumvisible() ? "\\<C-n>" : "\\<C-x>\\<C-o>"',
--     { noremap = true, silent = true, expr = true }
-- )

-------------------------------------------------------------------------------
-- Colorscheme
-------------------------------------------------------------------------------

-- True color support
vim.o.termguicolors = true

-- Enable syntax highlighting
vim.cmd("syntax on")

local color = {
    nord00 = "#2E3440",
    nord01 = "#3B4252",
    nord02 = "#434C5E",
    nord03 = "#616E88", -- Out of pallette
    nord04 = "#D8DEE9",
    nord05 = "#E5E9F0",
    nord06 = "#ECEFF4",
    nord07 = "#8FBCBB",
    nord08 = "#88C0D0",
    nord09 = "#81A1C1",
    nord10 = "#5E81AC",
    nord11 = "#BF616A",
    nord12 = "#D08770",
    nord13 = "#EBCB8B",
    nord14 = "#A3BE8C",
    nord15 = "#B48EAD",
    nord16 = "#ABB2BF", -- Out of palette
}

-- Code
vim.api.nvim_set_hl(0, "Normal",         { fg = color.nord16, bg = color.nord00 })
vim.api.nvim_set_hl(0, "Comment",        { fg = color.nord03, bg = color.nord00, italic = true })
vim.api.nvim_set_hl(0, "Type",           { fg = color.nord09, bg = color.nord00 })
vim.api.nvim_set_hl(0, "Typedef",        { link = "Type" })
vim.api.nvim_set_hl(0, "Statement",      { link = "Type" })
vim.api.nvim_set_hl(0, "Structure",      { link = "Type" })
vim.api.nvim_set_hl(0, "StorageClass",   { link = "Type" })
vim.api.nvim_set_hl(0, "Boolean",        { link = "Type" })
vim.api.nvim_set_hl(0, "Keyword",        { fg = color.nord09, bg = color.nord00 })
vim.api.nvim_set_hl(0, "Conditional",    { link = "Keyword" })
vim.api.nvim_set_hl(0, "Label",          { link = "Keyword" })
vim.api.nvim_set_hl(0, "PreProc",        { link = "Keyword" })
vim.api.nvim_set_hl(0, "Include",        { link = "PreProc" })
vim.api.nvim_set_hl(0, "Define",         { link = "PreProc" })
vim.api.nvim_set_hl(0, "Constant",       { fg = color.nord07, bg = color.nord00 })
vim.api.nvim_set_hl(0, "Float",          { fg = color.nord15, bg = color.nord00 })
vim.api.nvim_set_hl(0, "String",         { fg = color.nord14, bg = color.nord00 })
vim.api.nvim_set_hl(0, "Repeat",         { fg = color.nord09, bg = color.nord00 })
vim.api.nvim_set_hl(0, "Operator",       { fg = color.nord09, bg = color.nord00 })
vim.api.nvim_set_hl(0, "SpecialKey",     { fg = color.nord09, bg = color.nord00 })
vim.api.nvim_set_hl(0, "SpecialChar",    { fg = color.nord13, bg = color.nord00 })
vim.api.nvim_set_hl(0, "PreCondit",      { fg = color.nord13, bg = color.nord00 })
vim.api.nvim_set_hl(0, "Character",      { fg = color.nord14, bg = color.nord00 })
vim.api.nvim_set_hl(0, "Delimiter",      { fg = color.nord16, bg = color.nord00 })
vim.api.nvim_set_hl(0, "SpecialComment", { fg = color.nord08, bg = color.nord00 })
vim.api.nvim_set_hl(0, "Todo",           { fg = color.nord13, bg = color.nord00 })
vim.api.nvim_set_hl(0, "Search",         { fg = color.nord06, bg = color.nord10 })
vim.api.nvim_set_hl(0, "MatchParen",     { fg = color.nord15, bg = color.nord00, bold = true })
vim.api.nvim_set_hl(0, "Special",        { fg = color.nord16, bg = color.nord00, bold = true })
vim.api.nvim_set_hl(0, "Number",         { fg = color.nord15, bg = color.nord00, italic = true })
vim.api.nvim_set_hl(0, "Identifier",     { fg = color.nord09, bg = color.nord00, italic = true })
vim.api.nvim_set_hl(0, "Function",       { fg = color.nord08, bg = color.nord00, italic = true })

-- Editor
vim.api.nvim_set_hl(0, "Title",        { fg = color.nord14, bg = color.nord00, bold = true })
vim.api.nvim_set_hl(0, "StatusLine",   { bg = color.nord02, fg = color.nord04 })
vim.api.nvim_set_hl(0, "Cursor",       { fg = color.nord04, bg = color.nord00 })
vim.api.nvim_set_hl(0, "CursorLine",   { bg = color.nord01 })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = color.nord15, bold = true })
vim.api.nvim_set_hl(0, "NonText",      { fg = color.nord03, bg = color.nord00 })
vim.api.nvim_set_hl(0, "Visual",       { bg = color.nord02 })
vim.api.nvim_set_hl(0, "Pmenu",        { fg = color.nord04, bg = color.nord02 })
vim.api.nvim_set_hl(0, "PmenuSel",     { fg = color.nord04, bg = color.nord10 })
vim.api.nvim_set_hl(0, "SignColumn",   { fg = color.nord04, bg = color.nord00 })
vim.api.nvim_set_hl(0, "LineNr",       { fg = color.nord03 })

-- Diagnostics
vim.api.nvim_set_hl(0, "Error",           { fg = color.nord11, bg = color.nord00 })
vim.api.nvim_set_hl(0, "ErrorMsg",        { link = "Error" })
vim.api.nvim_set_hl(0, "DiagnosticError", { link = "Error" })
vim.api.nvim_set_hl(0, "Warnings",        { fg = color.nord13, bg = color.nord00 })
vim.api.nvim_set_hl(0, "WarningMsg",      { link = "Warnings" })
vim.api.nvim_set_hl(0, "DiagnosticWarn",  { link = "Warnings" })

-- Filetype
vim.api.nvim_set_hl(0, "shDerefSimple",             { fg = color.nord16, bg = color.nord00, bold = true })
vim.api.nvim_set_hl(0, "ledgerTransactionDate",     { fg = color.nord16, bg = color.nord00 })
vim.api.nvim_set_hl(0, "ledgerTransactionMetadata", { fg = color.nord03, bg = color.nord00 })
vim.api.nvim_set_hl(0, "markdownCode",              { fg = color.nord07, bg = color.nord00 })
vim.api.nvim_set_hl(0, "markdownH1",                { fg = color.nord14, bg = color.nord00, bold = true })
vim.api.nvim_set_hl(0, "markdownH2",                { fg = color.nord14, bg = color.nord00, bold = true })
vim.api.nvim_set_hl(0, "markdownH3",                { fg = color.nord14, bg = color.nord00, italic = true })
vim.api.nvim_set_hl(0, "markdownItalic",            { fg = color.nord09, bg = color.nord00, italic = true })

-------------------------------------------------------------------------------
-- Plugins
-------------------------------------------------------------------------------

require('nvim-autopairs').setup({})

local lsp = require('lsp-zero')

lsp.on_attach(function(_, bufnr)
    local opts = { buffer = bufnr }
    vim.keymap.set('n', 'K',  '<cmd>lua vim.lsp.buf.hover()<cr>',           opts)
    vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>',      opts)
    vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>',     opts)
    vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>',  opts)
    vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
    vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>',      opts)
    vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>',  opts)
    vim.keymap.set('n', 'gc', '<cmd>lua vim.lsp.buf.code_action()<cr>',     opts)
    vim.keymap.set('n', 'gl', '<cmd>lua vim.diagnostic.open_float()<cr>',   opts)
    vim.keymap.set('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<cr>',    opts)
    vim.keymap.set('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<cr>',    opts)
end)

lsp.omnifunc.setup({
    tabcomplete = true,
    use_fallback = true,
    update_on_delete = true,
})

require("zk").setup({
    picker = "select",
    lsp = {
        config = {
            name = "zk",
            cmd = { "zk", "lsp" },
        },
        auto_attach = {
            enabled = true,
        },
    },
})

lsp.new_server({
    name = 'gopls',
    cmd = { 'gopls' },
    filetypes = { 'go' },
    root_dir = function()
        return lsp.dir.find_first({ 'go.mod', '.git' })
    end,
})

lsp.new_server({
    name = 'lua_ls',
    cmd = { 'lua-language-server' },
    filetypes = { 'lua' },
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim" } -- Add "vim" to recognized globals
            }
        }
    },
    root_dir = function()
        return lsp.dir.find_first({ '.luarc.json', 'nvim', '.git' })
    end,
})

lsp.new_server({
    name = 'rust',
    cmd = { 'rust-analyzer' },
    filetypes = { 'rust' },
    root_dir = function()
        return lsp.dir.find_first({ "Cargo.toml", "rust-project.json" })
    end,
})

lsp.setup()

-------------------------------------------------------------------------------
-- Disable Plugins
-------------------------------------------------------------------------------

-- vim.g.loaded_2html_plugin      = 1
-- vim.g.loaded_getscriptPlugin   = 1
-- vim.g.loaded_gzip              = 1
-- vim.g.loaded_logiPat           = 1
-- vim.g.loaded_rrhelper          = 1
-- vim.g.loaded_spec              = 1
-- vim.g.loaded_tar               = 1
-- vim.g.loaded_tarPlugin         = 1
-- vim.g.loaded_vimball           = 1
-- vim.g.loaded_vimballPlugin     = 1
-- vim.g.loaded_zip               = 1
-- vim.g.loaded_zipPlugin         = 1
-- vim.g.loaded_netrw             = 1
-- vim.g.loaded_netrwPlugin       = 1
-- vim.g.loaded_netrwSettings     = 1
-- vim.g.loaded_netrwFileHandlers = 1

-------------------------------------------------------------------------------
-- Colorscheme
-------------------------------------------------------------------------------

--vim.api.nvim_set_hl(0, "Macro",          { fg = color.nord09 })
--vim.api.nvim_set_hl(0, "Exception",      { fg = color.nord09 })
--vim.api.nvim_set_hl(0, "Cursor",       { fg = color.nord04, reverse = true })
--vim.api.nvim_set_hl(0, "VisualMode",   { fg = color.nord09, reverse = true })
--vim.api.nvim_set_hl(0, "ModeMsg",      { fg = color.nord04 })
--vim.api.nvim_set_hl(0, "MoreMsg",      { fg = color.nord04 })
--vim.api.nvim_set_hl(0, "Directory",    { fg = color.nord07 })
--vim.api.nvim_set_hl(0, "VertSplit",    { fg = color.nord02 })
--vim.api.nvim_set_hl(0, "Substitute",   { fg = color.nord00, bg = color.nord12 })
