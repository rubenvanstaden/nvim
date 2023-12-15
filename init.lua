-------------------------------------------------------------------------------
-- Colorscheme
-------------------------------------------------------------------------------
--
require("solarized-osaka").setup({
  -- your configuration comes here
  -- or leave it empty to use the default settings
  transparent = false, -- Enable this to disable setting the background color
  terminal_colors = false, -- Configure the colors used when opening a `:terminal` in [Neovim](https://github.com/neovim/neovim)
  styles = {
    -- Style to be applied to different syntax groups
    -- Value is any valid attr-list value for `:help nvim_set_hl`
    comments = { italic = true },
    keywords = { italic = true },
    functions = {},
    variables = {},
    -- Background styles. Can be "dark", "transparent" or "normal"
    sidebars = "dark", -- style for sidebars, see below
    floats = "dark", -- style for floating windows
  },
  sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
  day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
  hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
  dim_inactive = false, -- dims inactive windows
  lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold

  --- You can override specific color groups to use other groups or a hex color
  --- function will be called with a ColorScheme table
  ---@param colors ColorScheme
  on_colors = function(colors) end,

  --- You can override specific highlights to use other groups or a hex color
  --- function will be called with a Highlights and ColorScheme table
  ---@param highlights Highlights
  ---@param colors ColorScheme
  on_highlights = function(highlights, colors) end,
})

--vim.cmd[[colorscheme solarized-osaka]]
vim.cmd("colorscheme kanagawa")
vim.o.termguicolors = true
vim.cmd("syntax on")

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
--vim.o.number = true
--vim.o.relativenumber = true

vim.o.foldenable = true       -- Enable folding
vim.o.foldmethod = 'indent'   -- Set fold method (e.g., 'indent', 'syntax', or 'marker')
vim.o.foldlevel = 1          -- Open most folds by default
vim.o.foldlevelstart = 99     -- Start editing with all folds open


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
-- LSP
-------------------------------------------------------------------------------

require('nvim-autopairs').setup({})

local lsp = require('lspconfig')
local utils = require 'lspconfig.util'

require("zk").setup({})
lsp.rust_analyzer.setup{}
lsp.gopls.setup{}
--lsp.clangd.setup{}
--
lsp.clangd.setup{
    on_attach = on_attach,
    cmd = {
        "clangd",
         "--background-index",
         "--suggest-missing-includes",
         "--all-scopes-completion",
--         "–clang-tidy",
--         "–pch-storage=memory",
--         "–log=verbose",
--         "–pretty",
--         "–header-insertion=never"
    },
    filetypes = {"c", "cpp"},
    root_dir = utils.root_pattern("compile_commands.json", "compile_flags.txt", ".git"),
    --init_option = { fallbackFlags = { "-std=c++2a" } }
}

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
        --vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
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

vim.g.loaded_2html_plugin      = 1
vim.g.loaded_getscriptPlugin   = 1
vim.g.loaded_gzip              = 1
vim.g.loaded_logiPat           = 1
vim.g.loaded_rrhelper          = 1
vim.g.loaded_spec              = 1
vim.g.loaded_tar               = 1
vim.g.loaded_tarPlugin         = 1
vim.g.loaded_vimball           = 1
vim.g.loaded_vimballPlugin     = 1
vim.g.loaded_zip               = 1
vim.g.loaded_zipPlugin         = 1
vim.g.loaded_netrw             = 1
vim.g.loaded_netrwPlugin       = 1
vim.g.loaded_netrwSettings     = 1
vim.g.loaded_netrwFileHandlers = 1

-------------------------------------------------------------------------------
