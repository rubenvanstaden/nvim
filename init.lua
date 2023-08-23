-------------------------------------------------------------------------------
-- Options
-------------------------------------------------------------------------------

vim.g.mapleader   = " "                -- Remap leader to spacebar
vim.o.mouse       = "a"                -- Enable mouse completely (default), make "" to disable
vim.o.shiftwidth  = 4                  -- Number of spaces tabs count for
vim.o.tabstop     = 4                  -- Always use clipboard for all operations
vim.o.laststatus  = 2                  -- Set the status line to always be visible
vim.o.cursorline  = false               -- Highlight current line
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

vim.api.nvim_set_keymap(
    'i', '<Tab>',
    'pumvisible() ? "\\<C-n>" : "\\<C-x>\\<C-o>"',
    { noremap = true, silent = true, expr = true }
)

-------------------------------------------------------------------------------
-- Colorscheme
-------------------------------------------------------------------------------

vim.o.termguicolors = true

vim.cmd("syntax on")

local color = {
    base = "#232136",
    surface = "#2a273f",
    overlay = "#393552",
    muted = "#6e6a86",
    subtle = "#908caa",
    text = "#e0def4",
    love = "#eb6f92",
    gold = "#f6c177",
    rose = "#ea9a97",
    pine = "#3e8fb0",
    foam = "#9ccfd8",
    iris = "#c4a7e7",
    highlight_low = "#2a283e",
    highlight_med = "#44415a",
    highlight_high = "#56526e",
}

vim.api.nvim_set_hl(0, "Normal", { fg = color.text, bg = color.base })
vim.api.nvim_set_hl(0, "Comment", { fg = color.muted, bg = nil, italic = true })

vim.api.nvim_set_hl(0, "Statement", { fg = color.pine, bg = nil })
vim.api.nvim_set_hl(0, "Repeat", { link = "Statement" })
vim.api.nvim_set_hl(0, "Structure", { link = "Statement" })
vim.api.nvim_set_hl(0, "StorageClass", { link = "Statement" })
vim.api.nvim_set_hl(0, "Keyword", { link = "Statement" })
vim.api.nvim_set_hl(0, "Exception", { link = "Statement" })
vim.api.nvim_set_hl(0, "Conditional", { link = "Statement" })
vim.api.nvim_set_hl(0, "Define", { link = "Statement" })

vim.api.nvim_set_hl(0, "Constant", { fg = color.rose, bg = nil })
vim.api.nvim_set_hl(0, "Boolean", { link = "Constant" })
vim.api.nvim_set_hl(0, "Character", { link = "Constant" })

vim.api.nvim_set_hl(0, "Number", { fg = color.rose, bg = nil, italic = true })
vim.api.nvim_set_hl(0, "Float", { link = "Number" })

vim.api.nvim_set_hl(0, "String", { fg = color.gold, bg = nil })

vim.api.nvim_set_hl(0, "Type", { fg = color.foam })
vim.api.nvim_set_hl(0, "Typedef", { link = "Type" })

vim.api.nvim_set_hl(0, "Function", { fg = color.rose, bg = nil, italic = true })
vim.api.nvim_set_hl(0, "Identifier", { link = "Function" })
vim.api.nvim_set_hl(0, "Include", { link = "Function" })
vim.api.nvim_set_hl(0, "Operator", { link = "Function" })
vim.api.nvim_set_hl(0, "Title", { link = "Function" })

vim.api.nvim_set_hl(0, "Special", { fg = color.rose, bg = nil})
vim.api.nvim_set_hl(0, "PreProc", { link = "Special" })
vim.api.nvim_set_hl(0, "Label", { link = "Special" })

vim.api.nvim_set_hl(0, "Todo", { fg = color.iris, bg = nil, bold = true })

vim.api.nvim_set_hl(0, "Search", { fg = text, bg = nil, bold = true })
vim.api.nvim_set_hl(0, "MatchParen", { fg = color.iris, bg = nil, bold = true })

-- Editor

vim.api.nvim_set_hl(0, "LineNr", { bg = color.base, fg = color.subtle, bold = false })
vim.api.nvim_set_hl(0, "StatusLine", { bg = color.highlight_med, fg = nil })
vim.api.nvim_set_hl(0, "Visual", { bg = color.highlight_med, fg = nil })
vim.api.nvim_set_hl(0, "NonText", { fg = color.muted, bg = nil})
vim.api.nvim_set_hl(0, "Pmenu", { bg = color.overlay, fg = nil })
vim.api.nvim_set_hl(0, "PmenuSel", { bg = color.overlay, fg = nil, bold = true })
--vim.api.nvim_set_hl(0, "CursorLine", { bg = color.sumiInk2, bg = nil })
--vim.api.nvim_set_hl(0, "CursorLineNr", { fg = color.rose, bg = nil, bold = true })
vim.api.nvim_set_hl(0, "SignColumn", { fg = nil, bg = nil })
--vim.api.nvim_set_hl(0, "VertSplit", { fg = color.base02 })
--vim.api.nvim_set_hl(0, "Cursor", { fg = color.base1, bg = color.green })
--vim.api.nvim_set_hl(0, "VisualMode", { fg = color.blue, bg = color.base03, reverse = true })

-- Diagnostics
vim.api.nvim_set_hl(0, "Error", { fg = color.love, bg = nil})
vim.api.nvim_set_hl(0, "ErrorMsg", { link = "Error" })
vim.api.nvim_set_hl(0, "DiagnosticError", { link = "Error" })

vim.api.nvim_set_hl(0, "Warnings", { fg = color.gold, bg = nil })
vim.api.nvim_set_hl(0, "WarningMsg", { link = "Warnings" })
vim.api.nvim_set_hl(0, "DiagnosticWarn", { link = "Warnings" })

-------------------------------------------------------------------------------
-- LSP
-------------------------------------------------------------------------------

require('nvim-autopairs').setup({})

local lsp = require('lspconfig')

require("zk").setup({})
lsp.rust_analyzer.setup{}
lsp.gopls.setup{}

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {

    group = vim.api.nvim_create_augroup('UserLspConfig', {}),

    callback = function(ev)

        -- Buffer local mappings.
        -- See `:help vim.lsp.*` for documentation on any of the below functions
        local opts = { buffer = ev.buf }
        vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
        vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
        vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
        vim.keymap.set({ 'n', 'v' }, 'gc', vim.lsp.buf.code_action, opts)
        vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
        vim.keymap.set('n', '<space>f', function()
            vim.lsp.buf.format { async = true }
        end, opts)
    end,
})

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
