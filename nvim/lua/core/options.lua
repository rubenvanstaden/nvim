local opt = vim.opt  -- to set options
local cmd = vim.cmd  -- to execute Vim commands e.g. cmd('pwd')
local fn = vim.fn    -- to call Vim functions e.g. fn.bufnr()
local g = vim.g      -- a table to access global variables

opt.number = true         -- Display line numbers to the left
opt.expandtab = true      -- Use spaces instead of tabs
opt.shiftwidth = 4        -- Number of spaces tabs count for 
opt.smartindent = true    -- Insert indents automatically
opt.termguicolors = true  -- True color support
opt.wrap = false          -- Disable line wrap

-- TODO
-- opt.wildmode = {'list', 'longest'}  -- Command-line completion mode
-- opt.numberwidth = 2  -- Number width
-- opt.tabstop = 4      -- Number of spaces tabs count for
-- opt.splitbelow = true               -- Put new windows below current
-- opt.splitright = true               -- Put new windows right of current
