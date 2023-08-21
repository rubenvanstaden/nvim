-------------------------------------------------------------------------------
-- Options
-------------------------------------------------------------------------------

vim.g.mapleader   = " "                -- Remap leader to spacebar
vim.o.mouse       = "a"                -- Enable mouse completely (default), make "" to disable
vim.o.shiftwidth  = 4                  -- Number of spaces tabs count for
vim.o.tabstop     = 4                  -- Always use clipboard for all operations
vim.o.laststatus  = 2                  -- Set the status line to always be visible
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

vim.api.nvim_set_hl(0, "Normal", { fg = color.base0, bg = color.base03 })

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
vim.api.nvim_set_hl(0, "String", { link = "Identifier", italic = true })
vim.api.nvim_set_hl(0, "Type", { link = "Identifier" })
vim.api.nvim_set_hl(0, "Typedef", { link = "Identifier" })

vim.api.nvim_set_hl(0, "Function", { fg = color.blue, bold = false, italic = true })
vim.api.nvim_set_hl(0, "Include", { link = "Function" })
--vim.api.nvim_set_hl(0, "Operator", { link = "Function" })
vim.api.nvim_set_hl(0, "Operator", { fg = color.base00, bold = false })

vim.api.nvim_set_hl(0, "Special", { fg = color.violet, italic = true, bold = false })
vim.api.nvim_set_hl(0, "PreProc", { link = "Special" })
vim.api.nvim_set_hl(0, "Question", { link = "Special" })
vim.api.nvim_set_hl(0, "Todo", { link = "Special" })
vim.api.nvim_set_hl(0, "Label", { link = "Special" })

vim.api.nvim_set_hl(0, "Comment", { fg = color.base01, italic = true })
vim.api.nvim_set_hl(0, "Search", { fg = color.none, bg = color.base00 })
vim.api.nvim_set_hl(0, "MatchParen", { fg = color.cyan, bg = color.none, bold = true })

-- Markdown
vim.api.nvim_set_hl(0, "markdownBold", { fg = color.base0, bold = true })
vim.api.nvim_set_hl(0, "markdownItalic", { fg = color.violet, italic = true })
vim.api.nvim_set_hl(0, "markdownLinkText", { fg = color.cyan, bold = false })
vim.api.nvim_set_hl(0, "markdownUrl", { fg = color.base00,  bold = false })
vim.api.nvim_set_hl(0, "markdownHeadingDelimiter", { fg = color.base0,  bold = true })
vim.api.nvim_set_hl(0, "shDerefSimple", { fg = color.base0,  bold = true })
vim.api.nvim_set_hl(0, "ledgerAccount", { fg = color.base00,  bold = false })
vim.api.nvim_set_hl(0, "ledgerAmount", { fg = color.yellow,  bold = false })

-- Editor

vim.api.nvim_set_hl(0, "LineNr", { bg = color.base03, fg = color.base00, bold = false })
vim.api.nvim_set_hl(0, "CursorLineNr", { bg = color.base03, fg = color.base00, bold = true })
vim.api.nvim_set_hl(0, "StatusLine", { bg = color.base00, fg = color.base03, bold = true })
vim.api.nvim_set_hl(0, "Pmenu", { fg = color.base00, bg = color.base02, bold = false })
vim.api.nvim_set_hl(0, "PmenuSel", { fg = color.base03, bg = color.base01 })
vim.api.nvim_set_hl(0, "NonText", { fg = color.base01 })
vim.api.nvim_set_hl(0, "VertSplit", { link = "NonText" })
vim.api.nvim_set_hl(0, "Title", { fg = color.base00, bold = true })
vim.api.nvim_set_hl(0, "Visual", { fg = color.base03, bg = color.base01, bold = false })
--vim.api.nvim_set_hl(0, "VisualMode", { fg = color.blue, bg = color.base03, reverse = true })
vim.api.nvim_set_hl(0, "SignColumn", { fg = color.base00, bg = color.base03 })
--vim.api.nvim_set_hl(0, "Cursor", { fg = color.base1, bg = color.green })
vim.api.nvim_set_hl(0, "CursorLine", { bg = color.base02 })

-- Diagnostics
vim.api.nvim_set_hl(0, "Error", { fg = color.red })
vim.api.nvim_set_hl(0, "ErrorMsg", { link = "Error" })
vim.api.nvim_set_hl(0, "Warnings", { fg = color.yellow })
vim.api.nvim_set_hl(0, "WarningMsg", { link = "Warnings" })
vim.api.nvim_set_hl(0, "DiagnosticError", { link = "Error" })
vim.api.nvim_set_hl(0, "DiagnosticWarn", { link = "Warnings" })

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
