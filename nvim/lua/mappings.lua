local luasnip = require('luasnip')

local function map(mode, bind, exec, opts)
    local options = { noremap = true, silent = true }
    if opts then
        options = vim.tbl_extend('force', options, opts)
    end
    vim.api.nvim_set_keymap(mode, bind, exec, opts)
end

local opt = {} --empty opt for maps with no extra options

-- compe tab-completion
local t = function(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local check_back_space = function()
    local col = vim.fn.col('.') - 1
    return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
end

_G.tab_complete = function()
    if vim.fn.pumvisible() == 1 then
        return t "<C-n>"
    elseif check_back_space() then
        return t "<Tab>"
    elseif luasnip and luasnip.expand_or_jumpable() then
        return t("<Plug>luasnip-expand-or-jump")
    else
        return vim.fn['compe#complete']()
    end
end

_G.s_tab_complete = function()
    if vim.fn.pumvisible() == 1 then
        return t "<C-p>"
    elseif luasnip and luasnip.jumpable(-1) then
        return t("<Plug>luasnip-jump-prev")
    else
        return t "<S-Tab>"
    end
end

-- luasnip
map("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
map("s", "<Tab>", "v:lua.tab_complete()", {expr = true})
--map("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
--map("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
--map("i", "<C-E>", "<Plug>luasnip-next-choice", {})
--map("s", "<C-E>", "<Plug>luasnip-next-choice", {})

-- Keep visual mode when indenting
map("v", "<", "<gv", opt)
map("v", ">", ">gv", opt)

-- Windows
map("n", "<C-h>", "<C-w>h", opt)
map("n", "<C-j>", "<C-w>j", opt)
map("n", "<C-k>", "<C-w>k", opt)
map("n", "<C-l>", "<C-w>l", opt)

-- Dashboard
map("n", ";", ":",   opt)
--map("n", "J", "10j", opt)
--map("n", "K", "10k", opt)

-- Telescope
map("n", "<Leader>fb", "<cmd> lua require('telescope.builtin').buffers() <cr>",        opt)
map("n", "<Leader>fg", "<cmd> lua require('telescope.builtin').live_grep() <cr>",      opt)
map("n", "<Leader>ff", "<cmd> lua require('telescope.builtin').find_files() <cr>",     opt)
map("n", "<Leader>lr", "<cmd> lua require('telescope.builtin').lsp_references() <cr>", opt)
map("n", "<Leader>gt", "<cmd> lua require('telescope.builtin').git_status() <cr>",     opt)

-- LSP
map('n', 'gd',        "<cmd> lua vim.lsp.buf.definition() <cr>",  opt)
map('n', '<Leader>a', "<cmd> lua vim.lsp.buf.code_action() <cr>", opt)
map('n', '<Leader>h', "<cmd> lua vim.lsp.buf.hover() <cr>",       opt)
map('n', '<Leader>m', "<cmd> lua vim.lsp.buf.rename() <cr>",      opt)
map('n', '<Leader>r', "<cmd> lua vim.lsp.buf.references() <cr>",  opt)

local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
keymap("i", "<c-j>", "<cmd>lua require'luasnip'.jump(1)<CR>", opts)
keymap("s", "<c-j>", "<cmd>lua require'luasnip'.jump(1)<CR>", opts)
keymap("i", "<c-k>", "<cmd>lua require'luasnip'.jump(-1)<CR>", opts)
keymap("s", "<c-k>", "<cmd>lua require'luasnip'.jump(-1)<CR>", opts)
