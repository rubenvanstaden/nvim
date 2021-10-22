local function map(mode, bind, exec, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, bind, exec, opts)
end

local opt = {} --empty opt for maps with no extra options
local M = {}

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
  elseif vim.fn['vsnip#available'](1) == 1 then
    return t "<Plug>(vsnip-expand-or-jump)"
  elseif check_back_space() then
    return t "<Tab>"
  else
    return vim.fn['compe#complete']()
  end
end

_G.s_tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return t "<C-p>"
  elseif vim.fn['vsnip#jumpable'](-1) == 1 then
    return t "<Plug>(vsnip-jump-prev)"
  else
    return t "<S-Tab>"
  end
end

-- Windows
map("n", "<C-h>", "<C-w>h", opt)
map("n", "<C-j>", "<C-w>j", opt)
map("n", "<C-k>", "<C-w>k", opt)
map("n", "<C-l>", "<C-w>l", opt)

-- Dashboard 
map("n", ";", ":", opt)
map("n", "J", "10j", opt)
map("n", "K", "10k", opt)

-- Commenter Keybinding
map("n", "<leader>/", ":CommentToggle<CR>", opt)
map("v", "<leader>/", ":CommentToggle<CR>", opt)

-- Treesitter
map("n", "<C-n>", ":NvimTreeToggle<CR>", opt)

-- Telescope
map("n", "<Leader>fb", [[<Cmd> Telescope buffers<CR>]], opt)
map("n", "<Leader>fg", [[<Cmd> Telescope live_grep <CR>]], opt)
map("n", "<Leader>ff", [[<Cmd> Telescope find_files <CR>]], opt)
-- map("n", "<Leader>gt", [[<Cmd> Telescope git_status <CR>]], opt)
-- map("n", "<Leader>cm", [[<Cmd> Telescope git_commits <CR>]], opt)

-- LSP
map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opt)
--map('n', '<space>,', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opt)
--map('n', '<space>;', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opt)
--map('n', '<space>a', '<cmd>lua vim.lsp.buf.code_action()<CR>', opt)
--map('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opt)
--map('n', '<space>h', '<cmd>lua vim.lsp.buf.hover()<CR>', opt)
--map('n', '<space>m', '<cmd>lua vim.lsp.buf.rename()<CR>', opt)
--map('n', '<space>r', '<cmd>lua vim.lsp.buf.references()<CR>', opt)
--map('n', '<space>s', '<cmd>lua vim.lsp.buf.document_symbol()<CR>', opt)

-- Compe mappings
map("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
map("s", "<Tab>", "v:lua.tab_complete()", {expr = true})
map("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
map("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
map("i", "<CR>", "compe#confirm({ 'keys': '<CR>', 'select': v:true })", { expr = true })
